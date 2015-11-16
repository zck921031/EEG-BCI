# To Start #
Copy prepare.m.sample to prepare.m, and set PATH = [your BCI Competition dir].

Then run prepare(); Here we get Matlab variable PATH.

# Load bci dataset #
[xTr, yTr, xTe, yTe] = load\_bci(PATH, @load\_bci\_ii\_ia);

Here PATH is a exist variable.  @load\_bci\_ii\_ia is a function handle for loading dataset.

<font color="red"> Todo: add more load\_bci\_xx\_xx to _load\_bci_ folder, for more bci EEG datasets. </font>

# Extract_feature #
extract_feature(data, channel, myfun, varargin)

e.g. xTr\_haar = extract\_feature(xTr, 6, @wavedec, 4, 'haar');

Here data is an _N-by-D_ raw data matrix, chaanel is the number of channels, myfun is a function handle to extract\_feature, varargin is the arguments of myfun.

<font color="red"> Todo: add more feature extracting function to _feature_ folder </font>

# Classification #
model = fitcsvm(xTr, yTr );

yHat = predict(model, xTe);

Here yHat is the predict label. This module aims to get yHat.

<font color="red"> Todo: add more classification methods </font>

# Analyse #
analyse(yTe, yHat);

Here yTe is true label, yHat is predict label.
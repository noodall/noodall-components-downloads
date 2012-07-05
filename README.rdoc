# Noodall Downloads Component

A simple "Downloads" component for Noodall.

Downloads consist of a Title, Description and Download Link.

## Install

Add to your `Gemfile`

    gem 'noodall-components-downloads', :git => 'git@github.com:noodall/noodall-components-downloads.git'

Run `bundle install`

    bundle install

## Configuration

Noodall Downloads adds a `Downloads` component. Add it to your slots.

In `config/initializers/noodall.rb`

    Noodall::Node.slot :large, Downloads
    Noodall::Node.slot :small, Downloads

You can now add `Downloads` components to your Nodes.


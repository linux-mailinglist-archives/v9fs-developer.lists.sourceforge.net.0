Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E626B3AC700
	for <lists+v9fs-developer@lfdr.de>; Fri, 18 Jun 2021 11:12:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1luAXt-00007A-EA; Fri, 18 Jun 2021 09:12:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <miklos@szeredi.hu>) id 1luAXr-00006v-Ts
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Jun 2021 09:12:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tlodzRLKjYsmSIvJvfyHmyRZLG20ROka1PyN+VfwfnY=; b=DfyxXP4ULcaLsxZwmQXnhx+c/w
 Uc0Nz4mYu87UmxkTIbUlD4WGQ65m4dM0ydpjFcSJ9GkPPZkQunsquD6P10t9c1iPCmAGRlADhJ4rh
 nwiRg8YOXSugBpkNy7aJA0923OFzcXQu0AqWiCu8GAwLVGxq7I4gkPKySgnxfjCSUqPI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tlodzRLKjYsmSIvJvfyHmyRZLG20ROka1PyN+VfwfnY=; b=JEfdDD035I8MrGSMiBVXdk3fk2
 rlHEq1xG5bGeGXei26rRyxPHkI3vg7QJvoyUx2IlG3ZbF3qduCajzHwblHs6JYCFkXaL0X6jscNtz
 etXGs1KlW+Gjux0M331UlCjfBVXwwihChNJHeFYwHM1MqV5w2FD55mxKBz/xmTjqsOxY=;
Received: from mail-vs1-f53.google.com ([209.85.217.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1luAXh-00EqeC-69
 for v9fs-developer@lists.sourceforge.net; Fri, 18 Jun 2021 09:12:13 +0000
Received: by mail-vs1-f53.google.com with SMTP id f21so4594202vsl.4
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 18 Jun 2021 02:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=szeredi.hu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tlodzRLKjYsmSIvJvfyHmyRZLG20ROka1PyN+VfwfnY=;
 b=mdFl213r1n1uA6uKofvIKHWo5sizoJZyxajbWz27X3DF1VPnIRBBR8iCB7pGgabrWv
 0JKDQLz2F+SRodYFTB4NF/9URm8CCY9XPrzZ1jV7oFeOJOBt9hKPZOhLFvkyBXgOXhd8
 hA8SqcnfTAKYGkMOMHfAzHP2bOY32bYG7Hw8g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tlodzRLKjYsmSIvJvfyHmyRZLG20ROka1PyN+VfwfnY=;
 b=Dx1B8cI4RlvgpcWq4gLZSyeOvNOjIxQ/lESc4TtCxpg7K0caKV4u/I88LRzAkaioIv
 y78V2u9GZyEA0AplwC2dVr26KI9dmLC8mfQPN/RWHaoVFR0E12AKYeBk0rV+baukKSx5
 YOhjnY0KNd9n7AWKStsoZB8LZKyvA+TFfLSa9efIBv/r2EzeNwGkv1Rqxb+s+iabhVBO
 L/JVwovH97PucJ0dTWVxZawlgF49258Jv/5fkAKSSfmX5dD3T2s9EO2iMdCIzOga6N3G
 +ghhe50c3Y6R2ygjurTWuOGsZUfRNSTmyK+DtYqpsgymgWPLKAbpZ0tf2dbWBdkLNm9C
 TCgA==
X-Gm-Message-State: AOAM530mw993QXJC6vnAfftrmzbLF3dA7RlXxafVNzCTm5M3ivgEh3te
 VJRVVt+n8LQXcx3mpqIRIB/FJHEwRbwzAWA4yf6zlsh2XjE97Q==
X-Google-Smtp-Source: ABdhPJyvf5sruheatAks9eE+EGnBl6isJKiLy/2d9eFZrcjA+lnmitpD0wWr1RLBJMvgKuMZ7wE0T+qIjzgo250CRGI=
X-Received: by 2002:a67:bb14:: with SMTP id m20mr5468628vsn.0.1624000045114;
 Fri, 18 Jun 2021 00:07:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210614174454.903555-1-vgoyal@redhat.com>
 <20210614174454.903555-2-vgoyal@redhat.com>
In-Reply-To: <20210614174454.903555-2-vgoyal@redhat.com>
From: Miklos Szeredi <miklos@szeredi.hu>
Date: Fri, 18 Jun 2021 09:07:14 +0200
Message-ID: <CAJfpeguD+F3Ai01=-JYNTKS4LP4d879=+8T7eOBewZpevTRbJg@mail.gmail.com>
To: Vivek Goyal <vgoyal@redhat.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.217.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-Headers-End: 1luAXh-00EqeC-69
Subject: Re: [V9fs-developer] [PATCH v2 1/2] init/do_mounts.c: Add a path to
 boot from tag based filesystems
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: David Howells <dhowells@redhat.com>, Christoph Hellwig <hch@infradead.org>,
 Richard Weinberger <richard.weinberger@gmail.com>,
 linux-kernel@vger.kernel.org, "Dr. David Alan Gilbert" <dgilbert@redhat.com>,
 virtio-fs-list <virtio-fs@redhat.com>, Al Viro <viro@zeniv.linux.org.uk>,
 Stefan Hajnoczi <stefanha@redhat.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 14 Jun 2021 at 19:45, Vivek Goyal <vgoyal@redhat.com> wrote:
>
> We want to be able to mount virtiofs as rootfs and pass appropriate
> kernel command line. Right now there does not seem to be a good way
> to do that. If I specify "root=myfs rootfstype=virtiofs", system
> panics.
>
> virtio-fs: tag </dev/root> not found
> ..
> ..
> [ end Kernel panic - not syncing: VFS: Unable to mount root fs on
> +unknown-block(0,0) ]
>
> Basic problem here is that kernel assumes that device identifier
> passed in "root=" is a block device. But there are few execptions
> to this rule to take care of the needs of mtd, ubi, NFS and CIFS.
>
> For example, mtd and ubi prefix "mtd:" or "ubi:" respectively.
>
> "root=mtd:<identifier>" or "root=ubi:<identifier>"
>
> NFS and CIFS use "root=/dev/nfs" and CIFS passes "root=/dev/cifs" and
> actual root device details come from filesystem specific kernel
> command line options.
>
> virtiofs does not seem to fit in any of the above categories. In fact
> we have 9pfs which can be used to boot from but it also does not
> have a proper syntax to specify rootfs and does not fit into any of
> the existing syntax. They both expect a device "tag" to be passed
> in a device to be mounted. And filesystem knows how to parse and
> use "tag".
>
> So there seem to be a class of filesystems which specify root device
> using a "tag" which is understood by the filesystem. And filesystem
> simply expects that "tag" to be passed as "source" of mount and
> how to mount filesystem using that "tag" is responsibility of filesystem.
>
> This patch proposes that we internally create a list of filesystems
> which pass a "tag" in "root=<tag>" and expect that tag to be passed
> as "source" of mount. With this patch I can boot into virtiofs rootfs
> with following syntax.
>
> "root=myfs rootfstype=virtiofs rw"

The syntax and the implementation looks good.

Acked-by: Miklos Szeredi <mszeredi@redhat.com>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

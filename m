Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1E03ADC70
	for <lists+v9fs-developer@lfdr.de>; Sun, 20 Jun 2021 05:37:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1luoH3-0006Q0-EZ; Sun, 20 Jun 2021 03:37:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <changbin.du@gmail.com>) id 1luoH1-0006Pl-VC
 for v9fs-developer@lists.sourceforge.net; Sun, 20 Jun 2021 03:37:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dW+rXMivkypYzYHMcF6QYYWPgqFmfhvJSvjVwf9dI5k=; b=CwQ3ayi4OFc8YLV50FvGs6dMag
 SF+2ZNU5Pd42g9bRH1HLKVH85/QUHpQdmMeRpbAbq05oVQEBb0MPPVdtU6LIipBXR5u365X77jwFW
 pBr6r31m9Pv1BJmNabEgN4kPHgqu0CQ8P4tpzr+dEaTqAu6blHaL5e7q6EtsrLJ+vMw0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=dW+rXMivkypYzYHMcF6QYYWPgqFmfhvJSvjVwf9dI5k=; b=XykWHHRgkD6swAVc5HFLne60lh
 7vJIlNaTHAlkW/gwaxSd9xyk7I4ULDAEJvRuN+YlYYmjQIVZon9HOCv3T4yD/PpVn96Fkm11E2oCn
 7CYK4F3GNQDxj4ZyGCDZws1Rsc5pdaIjbMLLhMJnjmf3w6vZQizsmoQ1yGFLEHi4NoRk=;
Received: from mail-pg1-f175.google.com ([209.85.215.175])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1luoGn-00HPMC-PF
 for v9fs-developer@lists.sourceforge.net; Sun, 20 Jun 2021 03:37:29 +0000
Received: by mail-pg1-f175.google.com with SMTP id t17so11228815pga.5
 for <v9fs-developer@lists.sourceforge.net>;
 Sat, 19 Jun 2021 20:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dW+rXMivkypYzYHMcF6QYYWPgqFmfhvJSvjVwf9dI5k=;
 b=JNUYNv9AOR1lrhnnONzsRq5uMlitQSi46YiTtAGBzxM8WtGPHEnpfD0xU5g/U+5ehm
 Tvv8RY7A44J1t2yjeV7wFv1Ait0SzpzGdfGsk6/OBsl03/lmllBgWcO10l4fsBFzh/cz
 qaaY059u610zbatao1tFtEv76D2RRaecya3XWpqQL5tJvpaIIIJ2ss3hljfKnnHtFk+N
 gVwYyUWE3Yo3AyOsbQQv/Nzed0Psq9ge9+jhnuIDDIVDt81g3Y8eqjQNGYFMt/WHulwP
 30V1Tai1gLeni/SrW8/oMb+XJLD0rcYGRJclMOHIE3tvjLdM/I/xvOsSHNim2if7Mpn4
 DI4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dW+rXMivkypYzYHMcF6QYYWPgqFmfhvJSvjVwf9dI5k=;
 b=FHOGaSM/yk+fI6/55/GJ9AIL2pb7PmvwJw1q4UNCJrTt0Zo8L6lHU3ASeTP2FXH4yx
 RNX82CFhz+GRB/6ZlpLhqH7nWG/w47dYB+0Z/hLHSaQ81/FZmpr6Tathcv3jLpYLK7nP
 64ervUMWPguWPZXXPSx/uHM0D/7tYR59VxlPxV9BQQeGle48XT44Ar1OiwipS99JRazf
 6VlKFYPx3MNSBXJoz+gx3j9Tu0b6Ms5A3h1U2K4tYP5nWvzl/Jr0J+n/qd3FkhWuHZqM
 Ye5dbYri4IB/nWyCP9am+sfc8GDTeTaLPa0ewSfPiB2IPRHLtMijRPA3gVB9w1Hjd3nT
 wpWg==
X-Gm-Message-State: AOAM533HaMCjODBEdf6aEwTMMp3NLwlrD6lGWlqB6btrkMiBBNB/Ret9
 eZ7IY/pHz9dG4RG2DKNmvm0=
X-Google-Smtp-Source: ABdhPJzb7imTNOPSeeqdB7VaWtVCpMcEeqDkcxglpprDFK0XgZIqHrnz5S249B+Nva35TcKhiBS6XA==
X-Received: by 2002:a05:6a00:1a4a:b029:2ff:b1c:e3fd with SMTP id
 h10-20020a056a001a4ab02902ff0b1ce3fdmr13132129pfv.1.1624160228221; 
 Sat, 19 Jun 2021 20:37:08 -0700 (PDT)
Received: from mail.google.com ([141.164.41.4])
 by smtp.gmail.com with ESMTPSA id r134sm7916047pfc.68.2021.06.19.20.37.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Jun 2021 20:37:07 -0700 (PDT)
Date: Sun, 20 Jun 2021 11:36:59 +0800
From: Changbin Du <changbin.du@gmail.com>
To: Josh Triplett <josh@joshtriplett.org>
Message-ID: <20210620033659.s7rohai7dzwpgjur@mail.google.com>
References: <20210606230922.77268-1-changbin.du@gmail.com>
 <YMcaEq95T+1GxZz2@localhost> <YMca+N0UiGNZ1lSm@codewreck.org>
 <YMcfKqbCq7ZWAyaO@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMcfKqbCq7ZWAyaO@localhost>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (changbin.du[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.175 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.175 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1luoGn-00HPMC-PF
Subject: Re: [V9fs-developer] [PATCH v3 0/3] 9p: add support for root file
 systems
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Jun 14, 2021 at 02:19:38AM -0700, Josh Triplett wrote:
> On Mon, Jun 14, 2021 at 06:01:44PM +0900, Dominique Martinet wrote:
> > Josh Triplett wrote on Mon, Jun 14, 2021 at 01:57:54AM -0700:
> > > On Mon, Jun 07, 2021 at 07:09:19AM +0800, Changbin Du wrote:
> > > > Just like cifs and nfs, this short series enables rootfs support for 9p.
> > > > Bellow is an example which mounts v9fs with tag 'r' as rootfs in qemu
> > > > guest via virtio transport.
> > > > 
> > > >   $ qemu-system-x86_64 -enable-kvm -cpu host -m 1024 \
> > > >         -virtfs local,path=$rootfs_dir,mount_tag=r,security_model=passthrough,id=r \
> > > >         -kernel /path/to/linux/arch/x86/boot/bzImage -nographic \
> > > >         -append "root=/dev/v9fs v9fsroot=r,trans=virtio rw console=ttyS0 3"
> > > 
> > > Rather than inventing a pseudo-device /dev/v9fs for this, would it
> > > potentially work to use the existing rootfstype and rootflags options
> > > for this? rootfstype already determines what filesystem should be used
> > > to mount the root, and rootflags already provides options for that
> > > filesystem.
> > > 
> > > For instance, for the above example:
> > > rootfstype=9p root=r rootflags=trans=virtio
> > > 
> > > That would require a bit of fiddling to make rootfstype=9p allow a root
> > > that's just the mount_tag. If that isn't an option, then even with
> > > root=/dev/v9fs I think it still makes sense to use the existing
> > > rootflags for "trans=virtio" rather than creating a new "v9fsroot"
> > > option for that.
> > 
> > This doesn't work as is because of the way the code is written, if
> > there's no block device associated with a root=x option right now it
> > will lead to kernel panic.
> > 
> > I replied with folks in Cc but there's another thread on linux-fsdevel@
> > with a more generic approach that will build a list of filesystems which
> > don't require such a block device (either hardcoded with virtiofs and 9p
> > or based on FS_REQUIRES_DEV), thread started there but there's a second
> > patch hidden an more discussion below:
> > https://lore.kernel.org/linux-fsdevel/20210608153524.GB504497@redhat.com/
> 
> The patch later on in that thread (either using a list of
> non-block-device filesystems or the version referenced elsewhere that
> uses a flag in the filesystem definition) looks really appealing! That's
> exactly what I was hoping for. That gets us closer to directly
> translating `mount -t type -o options rootdesc` into `rootfstype=type
> rootflags=options root=rootdesc` in the general case, rather than having
> special cases for different filesystems.
Bellow is all the parameters of non-block rootfs support.
 nfs:    nfsroot=[<server-ip>:]<root-dir>[,<nfs-options>]
 cifs:   cifsroot=//<server-ip>/<share>[,options]
 v9fs:   v9fsroot=<tag/ip>[,options]
 mtd:    root=mtd:<identifier> or root=ubi:<identifier>
 virtiofs: root=fstag:<tag>

The main problem is we lack a generic handing for non-block rootdev. I think
maybe we can unify all of above.
 non-block:  root=<type>:<identifier>
 blockdev:   root=<bock-dev-path> or root=<blockdev major/minor>

Then:
 nfs:    root=nfs:[<server-ip>:]<root-dir>  rootflags=[nfs-options]
 cifs:   root=cifs://<server-ip>/<share>    rootflags=[options]
 v9fs:   root=9p:<tag/ip>                   rootflags=[options]
 mtd:    root=mtd:<identifier>              rootflags=[options]
 ubi:    root=ubi:<identifier>              rootflags=[options]
 virtiofs: root=virtiofs:<tag>              rootflags=[options]

And maybe we can also remove all the special fs code out of init/do_mounts.c.

-- 
Cheers,
Changbin Du


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

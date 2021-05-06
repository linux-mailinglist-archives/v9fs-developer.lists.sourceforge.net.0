Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AB468375827
	for <lists+v9fs-developer@lfdr.de>; Thu,  6 May 2021 18:05:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1legV9-000149-Dx; Thu, 06 May 2021 16:05:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <changbin.du@gmail.com>) id 1legUv-00013c-5j
 for v9fs-developer@lists.sourceforge.net; Thu, 06 May 2021 16:05:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vcpFfFIzyINPXpp5ROXT2gMnFUVzoFLvP2yhzNBbEtk=; b=PkR2Cuz4Gh9n/u9DUts13Cxw1H
 7FEemzgcyJr17vL9digC3TyTpnArjHlrk3K+nNDyUeHdZO11KahpDQQLbNRqSQebtmTgoHpPPlOwl
 BTsyyLA6SnNDohhW1VIiQNxQ6MnBCTXsHAJWOXcp8XAtPSBcHlJTNz0vfSHftH1LKoik=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vcpFfFIzyINPXpp5ROXT2gMnFUVzoFLvP2yhzNBbEtk=; b=GLGXyxkKabgt5eE8SEyypWTOcO
 Tlxs1EoLLCs5DeliI1u7jFckFMgTrHepNfcPP1gQtI7J56wST9okgHpdcTNGf5ParGfvYhtzvQTEM
 lmTALEzRcirrVysEkUTUvqycbCB+lHY44+G9FGRaylDlgfpFHc1gsgL1gN7Gslv9LERY=;
Received: from mail-pg1-f173.google.com ([209.85.215.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1legUm-0002QB-Ap
 for v9fs-developer@lists.sourceforge.net; Thu, 06 May 2021 16:05:09 +0000
Received: by mail-pg1-f173.google.com with SMTP id m124so4995797pgm.13
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 06 May 2021 09:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vcpFfFIzyINPXpp5ROXT2gMnFUVzoFLvP2yhzNBbEtk=;
 b=LCfQRVSqi79241FgXcA8zTpkEKF+xbfL0ENgkAYXF4CaoiJUuMSf6W6VJ1trcHvVfT
 v0JKdfS0zuQSHziMYlz85XgB9Y6KCjXaMRV6amC44ZwO/INzViX/YrdiRJaphw40bWqa
 K1UQyh3bBOVRVZh6rHixkS7z92ylEjT7FpLR+dzATWZ3F0CaFPqdNkCJHnf7CA3l7xTc
 k+BBjT0yME2DUdp1yG5r69cr4TRd12a4VUdB3EJTbhG1iHgjboDQA9Tb+QOfzNeReqWd
 4uQqBm8536WWm7Vl5F2Mq8okLKz2j9iXN3CLGw0ifqzO9xlk+jEarD2d5Zcy05AY8gdQ
 RP+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vcpFfFIzyINPXpp5ROXT2gMnFUVzoFLvP2yhzNBbEtk=;
 b=unSyoG/yEYN96gXc6z10Fh6MqjkNS6bl9IpumKfey6y9wKba8umOWUdNY2aN0K8CAX
 2/NVufnQ55GrL16gE/Kr3u7W7UpIXA904iuXrerMPwVfZXqfPw4zHAOSJj4RgGljM1Be
 Omthz/mRM/mw45iqQA5nwkv1/fepTrIfEnTOWvmB3BDeqylHl6G0P1mZkY0mwINgtdE9
 9XIo75gDbmcmpZNDs6g3CHGDzdQHC40mAoyX/GrsK2amw6O+waAN8EE7A2C9We/2pDDp
 mT6sYdSanZMRE/HajOkb+sirxQzdwAFZF+a7AMwR8nqBikaxuA3tG2q8BgOV31MLyghR
 cR9g==
X-Gm-Message-State: AOAM530FNgV5OVYL3qVAaXxNePLykJ6tFwdagXxkrAKchUwf7+wgKdpA
 J6vcUs8yYKcnAkUNU5O99ZhT47g2dkmCyQ==
X-Google-Smtp-Source: ABdhPJw3moov5fhsIOf0EXcPL/1UWXyACEKCIyXL8wBMsLd1jtzxVEQLISw2n4B8Jv6UOlYmOugFyg==
X-Received: by 2002:a63:e909:: with SMTP id i9mr5083892pgh.24.1620317095274;
 Thu, 06 May 2021 09:04:55 -0700 (PDT)
Received: from mail.google.com ([141.164.41.4])
 by smtp.gmail.com with ESMTPSA id n8sm2615107pfu.111.2021.05.06.09.04.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 09:04:54 -0700 (PDT)
Date: Fri, 7 May 2021 00:04:06 +0800
From: Changbin Du <changbin.du@gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20210506160406.bysqkln6p226rjjm@mail.google.com>
References: <20210505120748.8622-1-changbin.du@gmail.com>
 <20210505120748.8622-2-changbin.du@gmail.com>
 <YJKUqj5hY3q+qOia@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YJKUqj5hY3q+qOia@codewreck.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (changbin.du[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.173 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: get_maintainer.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.173 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1legUm-0002QB-Ap
Subject: Re: [V9fs-developer] [PATCH 1/3] 9p: add support for root file
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Jonathan Corbet <corbet@lwn.net>,
 Eric Van Hensbergen <ericvh@gmail.com>, linux-doc@vger.kernel.org,
 lkml@metux.net, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, Changbin Du <changbin.du@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, May 05, 2021 at 09:50:50PM +0900, Dominique Martinet wrote:
> Why has this only been sent to direct maintainers and linux-doc@vger ?
> Please resend to at least v9fs-developer@sf, linux-fs@vger and whoever
> get_maintainer.pl deems appropriate for init/do_mounts.c changes
> (added the two lists to this mail)
>
I made a typing mistake and then...

> 
> As a whole for the series: I'm personally not sure I'd encourage this,
> it can currently be done with an initrd if someone cares enough and if
> we're going to add all remote filesystems that way there's going to be
> no end to it.
> 
> That being said, I'm not 100% opposed to it if there is demand; but I'll
> expect you to help with whatever bug reports people come up with using
> this option.
> 
No problem, I can help with any issues related to this. It is worth doint this
especially for some virtulizaion scenarioes.

> 
> Changbin Du wrote on Wed, May 05, 2021 at 08:07:46PM +0800:
> > diff --git a/fs/9p/v9fsroot.c b/fs/9p/v9fsroot.c
> > new file mode 100644
> > index 000000000000..7dd91cc3814f
> > --- /dev/null
> > +++ b/fs/9p/v9fsroot.c
> > @@ -0,0 +1,64 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * SMB root file system support
> 
> copy-paste error from fs/cifs/cifsroot.c
> 
Sorry, I'll fix it.

> > + *
> > + * Copyright (c) 2021 Changbin Du <changbin.du@gmail.com>
> > + */
> > +#include <linux/init.h>
> > +#include <linux/fs.h>
> > +#include <linux/types.h>
> > +#include <linux/ctype.h>
> > +#include <linux/string.h>
> > +#include <linux/root_dev.h>
> > +#include <linux/kernel.h>
> > +
> > +static char root_dev[2048] __initdata = "";
> > +static char root_opts[1024] __initdata = "";
> > +
> > +/* v9fsroot=<path>[,options] */
> > +static int __init v9fs_root_setup(char *line)
> > +{
> > +	char *s;
> > +	int len;
> > +
> > +	ROOT_DEV = Root_V9FS;
> > +
> > +	if (strlen(line) >= 1) {
> > +		/* make s point to ',' or '\0' at end of line */
> > +		s = strchrnul(line, ',');
> > +		/* len is strlen(unc) + '\0' */
> > +		len = s - line + 1;
> > +		if (len > sizeof(root_dev)) {
> > +			printk(KERN_ERR "Root-V9FS: path too long\n");
> 
> 9p has its own p9_debug helper; it's a bit awkward because even
> P9_DEBUG_ERROR right now is not displayed by default so I'm not against
> pr_err or pr_warn for important messages (I'd like to replace all such
> messages by either at some point), but at least stick to pr_xyz(...)
> rather than printk(KERN_XYZ...)
> 
okay, will use pr_err() instead then.

> > +			return 1;
> > +		}
> > +		strlcpy(root_dev, line, len);
> > +		if (*s) {
> > +			int n = snprintf(root_opts,
> > +					 sizeof(root_opts), "%s,%s",
> > +					 DEFAULT_MNT_OPTS, s + 1);
> 
> Did you actually run with this? DEFAULT_MNT_OPTS is not defined here.
> 
oops, my bad that I forgot to test the latest change.

> > +			if (n >= sizeof(root_opts)) {
> > +				printk(KERN_ERR "Root-V9FS: mount options string too long\n");
> > +				root_opts[sizeof(root_opts)-1] = '\0';
> > +				return 1;
> > +			}
> > +		}
> > +	}
> > +
> > +	return 1;
> 
> I'm also surprised this only ever returns 1, the cifs codes does the
> same but I'd be surprised the mount can work without a tag so there
> certainly should be some difference between working and not working?
>
I think this returns 1 just means the "v9fsroot=" kernel parameter is handled
so do not need further processing. But this doesn't mean the mount options can
work.

> I'd also expect ROOT_DEV to only be set on success, this doesn't make
> sense to trigger 9p mounting mechanisms with something that can't be
> mounted, leading to a long timeout (5+10+15+30*2 seconds) before a hard
> error when the hard error can be given right away.
> 
Sure, will only set ROOT_DEV after basic option checking.

> > +}
> > +
> > +__setup("v9fsroot=", v9fs_root_setup);
> > +
> > +int __init v9fs_root_data(char **dev, char **opts)
> > +{
> > +	if (!root_dev[0]) {
> > +		printk(KERN_ERR "Root-V9FS: no rootdev specified\n");
> > +		return -1;
> > +	}
> > +
> > +	*dev = root_dev;
> > +	*opts = root_opts;
> > +
> > +	return 0;
> > +}
> > diff --git a/include/linux/root_dev.h b/include/linux/root_dev.h
> > index 4e78651371ba..becd0ee2ff87 100644
> > --- a/include/linux/root_dev.h
> > +++ b/include/linux/root_dev.h
> > @@ -9,6 +9,7 @@
> >  enum {
> >  	Root_NFS = MKDEV(UNNAMED_MAJOR, 255),
> >  	Root_CIFS = MKDEV(UNNAMED_MAJOR, 254),
> > +	Root_V9FS = MKDEV(UNNAMED_MAJOR, 253),
> >  	Root_RAM0 = MKDEV(RAMDISK_MAJOR, 0),
> >  	Root_RAM1 = MKDEV(RAMDISK_MAJOR, 1),
> >  	Root_FD0 = MKDEV(FLOPPY_MAJOR, 0),
> > diff --git a/init/do_mounts.c b/init/do_mounts.c
> > index a78e44ee6adb..60af89983a6b 100644
> > --- a/init/do_mounts.c
> > +++ b/init/do_mounts.c
> > @@ -287,6 +287,8 @@ dev_t name_to_dev_t(const char *name)
> >  		return Root_NFS;
> >  	if (strcmp(name, "/dev/cifs") == 0)
> >  		return Root_CIFS;
> > +	if (strcmp(name, "/dev/v9fs") == 0)
> > +		return Root_V9FS;
> >  	if (strcmp(name, "/dev/ram") == 0)
> >  		return Root_RAM0;
> >  #ifdef CONFIG_BLOCK
> > @@ -536,6 +538,43 @@ static int __init mount_cifs_root(void)
> >  }
> >  #endif
> >  
> > +#ifdef CONFIG_9P_FS_ROOT
> > +
> > +extern int v9fs_root_data(char **dev, char **opts);
> > +
> > +#define V9FSROOT_TIMEOUT_MIN	5
> > +#define V9FSROOT_TIMEOUT_MAX	30
> > +#define V9FSROOT_RETRY_MAX	5
> > +
> > +static int __init mount_v9fs_root(void)
> > +{
> > +	char *root_dev, *root_data;
> > +	unsigned int timeout;
> > +	int try, err;
> > +
> > +	err = v9fs_root_data(&root_dev, &root_data);
> > +	if (err != 0)
> > +		return 0;
> > +
> > +	timeout = V9FSROOT_TIMEOUT_MIN;
> > +	for (try = 1; ; try++) {
> > +		err = do_mount_root(root_dev, "9p",
> > +				    root_mountflags, root_data);
> > +		if (err == 0)
> > +			return 1;
> > +		if (try > V9FSROOT_RETRY_MAX)
> > +			break;
> > +
> > +		/* Wait, in case the server refused us immediately */
> > +		ssleep(timeout);
> > +		timeout <<= 1;
> > +		if (timeout > V9FSROOT_TIMEOUT_MAX)
> > +			timeout = V9FSROOT_TIMEOUT_MAX;
> > +	}
> > +	return 0;
> > +}
> > +#endif
> > +
> >  void __init mount_root(void)
> >  {
> >  #ifdef CONFIG_ROOT_NFS
> > @@ -552,6 +591,13 @@ void __init mount_root(void)
> >  		return;
> >  	}
> >  #endif
> > +#ifdef CONFIG_9P_FS_ROOT
> > +	if (ROOT_DEV == Root_V9FS) {
> > +		if (!mount_v9fs_root())
> > +			printk(KERN_ERR "VFS: Unable to mount root fs via 9p.\n");
> > +		return;
> > +	}
> > +#endif
> >  #ifdef CONFIG_BLOCK
> >  	{
> >  		int err = create_dev("/dev/root", ROOT_DEV);
> -- 
> Dominique

-- 
Cheers,
Changbin Du


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

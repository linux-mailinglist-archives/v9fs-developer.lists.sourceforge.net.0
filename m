Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C7E5437ED1
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 21:48:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1me0WO-0000m1-AD; Fri, 22 Oct 2021 19:48:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1me0WM-0000lv-5O
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:48:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6MIYbiqTAgOZcVD7o78/iMiC5v0PdYgNzQoieL1dnhA=; b=mkUaI6jCx+xx2xU7vbyI/kRte4
 mQxoQNvU/g5dWEAENSHv3WcqrbUTkgqvvz+qwZ6fFehLdyg7Bnl22mcavx++xTUbiJzMzA13CL/HB
 3X0xEOxTQGBTMPWg+EBjEDhLOwGWsyXV75T39kbFYB/lAkw2nF93VYFd8lTx3gRHdVcw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6MIYbiqTAgOZcVD7o78/iMiC5v0PdYgNzQoieL1dnhA=; b=aPzbbgsP7hTR45BR0rehAXS/pn
 GVgi5YPRV0iO8wv52J+ZmwcOd7vklNz+hSI5qkO6paPFVngq298co7zkruiBHPDTHbiY55wYQhJQa
 eNg1e5KhRuLo0tFfUrHzL3M7uuqUu9/vH8VGM4c5ShNlKKrkZ5GwSXI25ST8vJ7/MJps=;
Received: from mail-lf1-f50.google.com ([209.85.167.50])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1me0WI-00CKDY-7r
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 19:48:06 +0000
Received: by mail-lf1-f50.google.com with SMTP id br29so1755166lfb.7
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 22 Oct 2021 12:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6MIYbiqTAgOZcVD7o78/iMiC5v0PdYgNzQoieL1dnhA=;
 b=NpDhMd+K20exoXtDQK8VxJJZx2jeiKfduhNixPkqDW3AhUt9xwYIfDXlKXTXwxZNO2
 rNDgVo6Zt+p6dmQo5I+h/tgPznlF+wHZKxE1z8e+Cg4jyabcAJUUy8ldhvdjRTw7E0CK
 ZCzjOxlNRUs2SJlFmk4Z3ttWsxuy0Et3Uj530=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6MIYbiqTAgOZcVD7o78/iMiC5v0PdYgNzQoieL1dnhA=;
 b=erTiwERg4mCHqgkg/IAnbV/YP0vUImyRs+FM5hg/64WGoBbJrRQ+IGs4TfZ1d8N1md
 zrThPqcJucxYt1crtgKeJ7SahoVt2NIK0OPlrs8DGEkUK34BIDC4w/f826vwrqMDfsac
 skLbHov0iRqnEP2JbeSYf7lha7XGUv8rLK+J/vkL+Yc28atTOOXX4T2HcsFXlSJY5RC8
 al/NMp+q52ZlzVmJrZuATvyWp3zTpEy2xSWOMiA3vw0xGEsIs/4qBI7eRiLuz+PBZikd
 rslIHDIYgOq/STHXSlYqA1ygIbz0vBfutjSy6Tv0+SfNiwhruoQMU0rgql/GDIb/4nLL
 PMFQ==
X-Gm-Message-State: AOAM53008VnaeiybbHPmCswJPspq7XRE0QFPOurXMy8CeZwaPRUzvF+H
 8Vz8Ujl+/3lRXQzt2YFPW5+cy4I/mJlWrQOsCWM=
X-Google-Smtp-Source: ABdhPJy8nwZ8mB6EXoQuF7GKrA+kXLIiwEisj/oPgAXEi4PvnvLMYE8e3LsIPZT1QuVsNjKqJiEVpw==
X-Received: by 2002:a05:6512:1690:: with SMTP id
 bu16mr1374447lfb.401.1634930494834; 
 Fri, 22 Oct 2021 12:21:34 -0700 (PDT)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com.
 [209.85.167.42])
 by smtp.gmail.com with ESMTPSA id k17sm388415ljq.33.2021.10.22.12.21.31
 for <v9fs-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 22 Oct 2021 12:21:32 -0700 (PDT)
Received: by mail-lf1-f42.google.com with SMTP id y26so5045178lfa.11
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 22 Oct 2021 12:21:31 -0700 (PDT)
X-Received: by 2002:a19:ad0c:: with SMTP id t12mr1362164lfc.173.1634930491229; 
 Fri, 22 Oct 2021 12:21:31 -0700 (PDT)
MIME-Version: 1.0
References: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
In-Reply-To: <163492911924.1038219.13107463173777870713.stgit@warthog.procyon.org.uk>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 22 Oct 2021 09:21:15 -1000
X-Gmail-Original-Message-ID: <CAHk-=wjmx7+PD0hzWj5Bg2b807xYD2KCZApTvFje=ufo+MxBMQ@mail.gmail.com>
Message-ID: <CAHk-=wjmx7+PD0hzWj5Bg2b807xYD2KCZApTvFje=ufo+MxBMQ@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 22,
 2021 at 8:58 AM David Howells <dhowells@redhat.com>
 wrote: > > David Howells (52): > fscache_old: Move the old fscache driver
 to one side > fscache_old: Rename CONFIG_FSCACHE* to CONFI [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.50 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.50 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-foundation.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1me0WI-00CKDY-7r
Subject: Re: [V9fs-developer] [PATCH v2 00/53] fscache: Rewrite index API
 and management system
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Marc Dionne <marc.dionne@auristor.com>,
 linux-afs@lists.infradead.org, Shyam Prasad N <nspmangalore@gmail.com>,
 CIFS <linux-cifs@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Jeff Layton <jlayton@kernel.com>, linux-cachefs@redhat.com,
 Trond Myklebust <trondmy@hammerspace.com>,
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, ceph-devel@vger.kernel.org,
 Trond Myklebust <trond.myklebust@hammerspace.com>, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, Dave Wysochanski <dwysocha@redhat.com>,
 Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Steve French <sfrench@samba.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Omar Sandoval <osandov@osandov.com>,
 Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, Oct 22, 2021 at 8:58 AM David Howells <dhowells@redhat.com> wrote:
>
> David Howells (52):
>       fscache_old: Move the old fscache driver to one side
>       fscache_old: Rename CONFIG_FSCACHE* to CONFIG_FSCACHE_OLD*
>       cachefiles_old:  Move the old cachefiles driver to one side

Honestly, I don't see the point of this when it ends up just being
dead code basically immediately.

You don't actually support picking one or the other at build time,
just a hard switch-over.

That makes the old fscache driver useless. You can't say "use the old
one because I don't trust the new". You just have a legacy
implementation with no users.

              Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

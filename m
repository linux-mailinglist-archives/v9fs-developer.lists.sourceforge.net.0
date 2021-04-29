Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F1936E73E
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Apr 2021 10:44:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lc2Ho-0008PU-Ai; Thu, 29 Apr 2021 08:44:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1lc2Hn-0008P1-8J
 for v9fs-developer@lists.sourceforge.net; Thu, 29 Apr 2021 08:44:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ta+e5qgCriDVz0KVpMfvq2yUJdYOeqYDGVPg9WVPxEg=; b=Ztsp+CCoUFXgwM/AFWcERpXI3I
 ej5d+CG9mg3jipK5Qx5TGnBf3WhaobkHTzJ3PEG/WrcLBD8AyV39D69f+wIk7tI6WBdr08Uuj5u8Q
 s39wkB5JCpovyTqeyxKdZL+u/eAKutNdY9ggJD5D7tYzyNVXQvmwj5rSlU3M/BdAjlXI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ta+e5qgCriDVz0KVpMfvq2yUJdYOeqYDGVPg9WVPxEg=; b=MmUFuh6Ww/L5xe/wM7rX7xwYm/
 b23FWUSCEpxUb5DLQgIEAAuumwiRq3+ZplhGPkGGj+lMbuw0ICagi8s97bRcbSlYUxXgSAj6n9lNi
 EwMCDum2V/GOQFJjKzVHMRBa7geRVWVoFPLg79fiIvd8fHnMeL4nbpTEaX/a1AMOMU50=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lc2Hd-0007Jn-UM
 for v9fs-developer@lists.sourceforge.net; Thu, 29 Apr 2021 08:44:37 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 10BBCC009; Thu, 29 Apr 2021 10:44:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1619685861; bh=Ta+e5qgCriDVz0KVpMfvq2yUJdYOeqYDGVPg9WVPxEg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gnSFjrAcLANDuM5FbwTfKafCqrNhox63ofVgTRy/7+6IAILje0WO58x5jhCE7yOJk
 QMr9hviHgsRq/hgkksEsQhkmEVVQl4inoDo/FKlstnTW3s0v31lECIErOsWuDMBkz5
 Jhdo0fCgjsM4g9zMinWSpoj3TzmZgfofQdQ81eYpeZboQI0AC7zgqWF46HjRBkXb9X
 /ngVbAx8VMNgY7PAT7t62dIj08ldnDbSPyYUcbYOJ5+HKgiwPXjjYfA6nrnDx7YbFn
 LQwjD0t+rpaQW33HtyVBAaUlWTb+hNRT5SLFN7fcOiSEvxRsM2PPZe6fGCRI52vPWX
 GRaEdNpydYqNw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 47670C009;
 Thu, 29 Apr 2021 10:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1619685859; bh=Ta+e5qgCriDVz0KVpMfvq2yUJdYOeqYDGVPg9WVPxEg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OmFgSaM5EuXGKJgVZUjXqFJS9RjdBGgXXjptx35RT4BOaJCfWOh5nkn65YCDHedMK
 LJQnUKabMDp66NU5y67zzyf7TvJlf0tS3ZjY8GHqy1y6sIdtVMX8gkRlYAJYffBMtO
 xeYBjhV4Z8inqSVtUc35TS0rsWctMI4epzEUE3QqfVM6vhkc7voeu4Q9WLmz4tGCBM
 w1ckRg8+acffFw9Fz1uQy49fBWfQuyiUUkyHoy+6N2d1HRsFXV9o64ws4w1p6qqwDH
 5ePfhjaZX1x3g5zC6nJ5gDzcoJuxfGDC0fw/BpSczV5ksxUBzQEfeOAqKcVOYFIHIq
 DIl7unNecqpag==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id faf44a92;
 Thu, 29 Apr 2021 08:44:09 +0000 (UTC)
Date: Thu, 29 Apr 2021 17:43:54 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <YIpxyi8l4LX/oTSJ@codewreck.org>
References: <CAMuHMdXJZ7iNQE964CdBOU=vRKVMFzo=YF_eiwsGgqzuvZ+TuA@mail.gmail.com>
 <161918446704.3145707.14418606303992174310.stgit@warthog.procyon.org.uk>
 <161918455721.3145707.4063925145568978308.stgit@warthog.procyon.org.uk>
 <442393.1619685697@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <442393.1619685697@warthog.procyon.org.uk>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linux-m68k.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lc2Hd-0007Jn-UM
Subject: Re: [V9fs-developer] [PATCH v7 07/31] netfs: Make a netfs helper
 module
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
Cc: linux-cifs@vger.kernel.org, "open list:NFS, SUNRPC,
 AND..." <linux-nfs@vger.kernel.org>, Jeff Layton <jlayton@redhat.com>,
 Linux MM <linux-mm@kvack.org>, David Wysochanski <dwysocha@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Steve French <sfrench@samba.org>, Marc Dionne <marc.dionne@auristor.com>,
 linux-cachefs@redhat.com, Geert Uytterhoeven <geert@linux-m68k.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>,
 ceph-devel <ceph-devel@vger.kernel.org>, linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells wrote on Thu, Apr 29, 2021 at 09:41:37AM +0100:
> Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > I see later patches make AFS and FSCACHE select NETFS_SUPPORT.  If this
> > is just a library of functions, to be selected by its users, then please
> > make the symbol invisible.
> 
> Ideally, yes, it would be an invisible symbol enabled by select from the
> network filesystems that use it - but doing that means that you can't choose
> whether to build it in or build it as a module.

Afaik such dependencies are then built as a module if everything it
depends on are modules, and built-in if any of these are built-in.

I think most users would be fine with that -- there's little reason to
have netfs built-in if AFS ceph etc all are modules?

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A85BA37D3DC
	for <lists+v9fs-developer@lfdr.de>; Wed, 12 May 2021 21:29:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lguXY-0001vu-Og; Wed, 12 May 2021 19:29:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <smfrench@gmail.com>) id 1lguXW-0001vm-Hl
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 19:29:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JWP0l+BA0fGfCW3697UumhoAM6OZCftdKGj+XYdvmfw=; b=l2XG3QAQmaiSOE0qq6sEtiOg9R
 mi08vxgB2uFdCLkhuue+VxYNqTzZZpd5aqmFAmsRfxHjjgBDUTDIvq0JgNvg7UhfMhrWdhsV4JX1S
 QUYiXM/+1vpUz3Upz4bNTsqZNOL8PXccZjqwr/m3kCaHvRnyTuUsY0QJ/huLegE82H+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JWP0l+BA0fGfCW3697UumhoAM6OZCftdKGj+XYdvmfw=; b=lgktm9MTw7+MdjJDXeM9E13si5
 pbzgH8QeEBy9ddCIiIO9b27vLYG8Nch5BVtLrn6q+KWX8DatMmXBR4KNBFKxxBr3DxS1PmRY9mByF
 QRzWG93C2WaYyZjdXCnlYtEOSFbzFd2bYbUZ13x85Ocr12MWjgJPhuJyt2R3BCyTyJU4=;
Received: from mail-lj1-f171.google.com ([209.85.208.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1lguXS-005sIs-W2
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 19:29:03 +0000
Received: by mail-lj1-f171.google.com with SMTP id w15so31008970ljo.10
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 12 May 2021 12:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=JWP0l+BA0fGfCW3697UumhoAM6OZCftdKGj+XYdvmfw=;
 b=jau0A7xhAKhNGGJJ6FHnLqlBanUYsG4/Xgrwbeb7LF93cOfKc6gIGxtrG8L93G9h3f
 xdF/N+vTKym3eL4xJZqCUekg/qtC81Tq82Zcm246zcaw/353BgLe5X/qAD1uuA3b7IrD
 IcLGS5RDD44EnpQsLv65nnaiiB1xaG6CQkmXTC6jJ8DQg1bfNnE2GjMLcvjkSUXU7Tkg
 VlUIFCMH5svj1mEyjnxNd9qWES0Tnnq5+U/U/S+OEysNGMpsy8uJ6NIWTsIkPoqLPtBT
 qql0mtiN6aCZ2BkloTkbsla9sXJUTaekCXW9MzOQpPjLTQyxx9BNIhPPy7Ohsa/OrMQh
 GXcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=JWP0l+BA0fGfCW3697UumhoAM6OZCftdKGj+XYdvmfw=;
 b=dsH32Vle295dVgbuBhYJESg7xj9oqsIWUtdIAK4ETot19GfO9QVlFEciZgNweiH4lw
 E+Rs+coKjA6NEC/RK9/Q6H6y5cDuRNNQvCYf/gEigBjV3OCTU4X+w09auKqzw5crD3OL
 uRhEw2FCp6rgjf50/wOpwp7XtcRp+HVeNpno6PwpNx7TaENLNSFPKXgkaMOH79uiOILp
 ch7hyWP2GDdt1CgkcIlPHAcOibNbv8bF2PyyIGUetu6lmC4H7ZrdZE2Xo+SkIhBAcoYB
 n8REfM/y/pMvJ/JoNXCFDjAdQkot3yfedH8B7pvp/s4bsBNAqEzSR30uwE0IYSe3GkU9
 SZAw==
X-Gm-Message-State: AOAM533FGMsA7jtzjv3BZvvCNJYMMRVoEQtJTy2AT6Wce0eunnvsj06g
 fLcPPC9oJ7qEpgZrpLK1AKx+z7wcWEGnqFrXXEgsBJY5bbc=
X-Google-Smtp-Source: ABdhPJybjV1UrN30hcZfWkxdJZJglKnFZJNX4SuGmgPSoe/Xw3yeEITbPhCey3BqWWyluYg0SRnoz0qVGrEzJuI95zI=
X-Received: by 2002:a2e:7819:: with SMTP id t25mr9229961ljc.406.1620847732192; 
 Wed, 12 May 2021 12:28:52 -0700 (PDT)
MIME-Version: 1.0
References: <YJvwVq3Gl35RQrIe@casper.infradead.org>
In-Reply-To: <YJvwVq3Gl35RQrIe@casper.infradead.org>
From: Steve French <smfrench@gmail.com>
Date: Wed, 12 May 2021 14:28:41 -0500
Message-ID: <CAH2r5msOQsdeknBdTsfMXYzrb5=NuKEBPc4WD1CkYp10t19Guw@mail.gmail.com>
To: Matthew Wilcox <willy@infradead.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (smfrench[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.208.171 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.171 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lguXS-005sIs-W2
Subject: Re: [V9fs-developer] Removing readpages aop
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
Cc: linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 CIFS <linux-cifs@vger.kernel.org>, linux-nfs <linux-nfs@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

I don't have any objections as long as:
- we see at least mild performance benefit (or at least we are
confident that no performance loss)
- it passes regression tests (the usual xfstest bucket)
- it doesn't complicate the code too much (sounds like it actually
might simplify it, but needs a little more work)
- make sure that the usual tuning parms still work (e.g. "rsize" and
"rasize" mount options) or we can figure out a sane way to autotune
readhead so those wouldn't be needed for any workload

But currently since we get the most benefit from multichannel (as that
allows even better parallelization of i/o) ... I have been focused on
various multichannel issues (low credit situations, reconnect, fall
back to different channels when weird errors, adjusting channels
dynamically when server adds or removes adapters on the fly) for the
short term

On Wed, May 12, 2021 at 10:31 AM Matthew Wilcox <willy@infradead.org> wrote:
>
> In Linus' current tree, there are just three filesystems left using the
> readpages address_space_operation:
>
> $ git grep '\.readpages'
> fs/9p/vfs_addr.c:       .readpages = v9fs_vfs_readpages,
> fs/cifs/file.c: .readpages = cifs_readpages,
> fs/nfs/file.c:  .readpages = nfs_readpages,
>
> I'd love to finish getting rid of ->readpages as it would simplify
> the VFS.  AFS and Ceph were both converted since 5.12 to use
> netfs_readahead().  Is there any chance we might get the remaining three
> filesystems converted in the next merge window?
>


-- 
Thanks,

Steve


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

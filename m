Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E292962CF
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Oct 2020 18:37:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kVdaM-00079D-Li; Thu, 22 Oct 2020 16:37:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <torvalds@linuxfoundation.org>) id 1kVdaL-00078y-MX
 for v9fs-developer@lists.sourceforge.net; Thu, 22 Oct 2020 16:37:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+lch+IZMfxV3l3RJZHJEowGmWSc4FEincm/6SxOPYKQ=; b=BCrHkCLh9TP1aSWhBVXq1pehjs
 u0mY/Rxgamdgg6vdFxMAOLuqG8E8RzT1qNGsXkKQXJEUg2et8qZJeMhIx2P5xxYX00MLIhxBLouhI
 I3y5UqIvkl7EEodmWqmlzdMn9WKIVuvnVyGqC+2+ciXJCmnjmIotpoMwYaolO9Aj0GHk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+lch+IZMfxV3l3RJZHJEowGmWSc4FEincm/6SxOPYKQ=; b=Nv1mtYrH7bss9xjF1F3RF7WbqM
 AakkKWXa/sUTh2ZX1PyqNqdbfQj8YRJu/xxv6UcSks3HuQgGdb7KYoHPtlk4DfpcDMu2kiIaZmDj7
 H2WGTye2FPapfrH+nzISipTkkWHTL54VAgBU3+zCh68m5an/Ne+1DW5rEhZ1j9BUUIXI=;
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kVdaC-002rOQ-AE
 for v9fs-developer@lists.sourceforge.net; Thu, 22 Oct 2020 16:37:05 +0000
Received: by mail-il1-f193.google.com with SMTP id a20so2282447ilk.13
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 22 Oct 2020 09:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+lch+IZMfxV3l3RJZHJEowGmWSc4FEincm/6SxOPYKQ=;
 b=UnPigUn7I8I2pHxcyygPgbXBbVkqTbhqqy9L+bgfggs0G/DgBn9kZGBtoRIrdbBKpb
 lSUKTYm+WQM1NWvaXeaJF20E6u4RFsEM+tVlZBwNgSwVDlNS40hqgXXwPu92E8sK56h6
 bz++0QFzMroIeALDuDt+A+PqpUgYC5I+omcLg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+lch+IZMfxV3l3RJZHJEowGmWSc4FEincm/6SxOPYKQ=;
 b=SNm+Q4ZX68K/wenUnnKdsxbb2auL/CkGjBbJldWtH73nTmuQUTjDR5D51eCl9UPweX
 jrJ6Al65Fe+gA+vZxzu+yXI8qB2heaM4IudpMaTjZIcraMh4AZVKYjU5m9PDR4FEubfB
 lTXd3wOhzvIFl6KszezU6KCLJOB5whsLntlbxDSKl9le+kHmpv+7iCgov9DiZGVQM1GV
 Q68RqAcaH6O89+ICXgUYcBbmcmoo2nTVX8GUDXbGlU14o8OhjQ0ohMik4ufJnctw2+Rs
 qFuv3SMTv4iLu8GxIczl+PUzzPvyBK9Jy3p2CE1xrOWSb7b5y7GTRSQ5fhADNEipfKam
 WVqg==
X-Gm-Message-State: AOAM5331VaOm4stuhSDtKprVdnnxCF7wloipxnbav024rL8CcwwL9Bli
 SPjN7KVg7H/wdQ6emZnppsZAGcAWClg+uNdPRv3EZw==
X-Google-Smtp-Source: ABdhPJw8exBc165wZjBOYF2Mq1SSOm9RufoUu4migxB1UkHORcrMp7OntunI5ATQr/R2FIQdbMLxOeKzZUu9cMeI+v4=
X-Received: by 2002:a92:d28e:: with SMTP id p14mr2661432ilp.132.1603384603410; 
 Thu, 22 Oct 2020 09:36:43 -0700 (PDT)
MIME-Version: 1.0
References: <20201022120826.GA28295@nautica>
In-Reply-To: <20201022120826.GA28295@nautica>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 22 Oct 2020 09:36:32 -0700
Message-ID: <CAADWXX89-No9XCE+ge+-Mv-DWPJk_y1E7YrDeng80jE=J3_gzQ@mail.gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.166.193 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: codewreck.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kVdaC-002rOQ-AE
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.10-rc1
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
 Netdev <netdev@vger.kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Oct 22, 2020 at 5:08 AM Dominique Martinet
<asmadeus@codewreck.org> wrote:
>
> another harmless cycle.

Quick note: your email got marked as spam for me.

It's probably just gmail doing another round of spam changes, but I do
note that while your smtp setup does spf, it doesn't do dkim. Which I
think makes gmail more suspicious about it than it would otherwise
likely be.

            Linus


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

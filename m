Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AC719FBC7
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Apr 2020 19:40:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jLVjL-0003Zr-Ue; Mon, 06 Apr 2020 17:40:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1jLVjK-0003Zk-OL
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 17:40:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ighi/oMVp9tFTOBbBxmTii0DJ49JmSpk0alZtgjwyEE=; b=JtSn7Oa1871kRGQmvW+RrimUnC
 /kcnrAqZm/wKxIOGJC/xbq6mnmuWqgjkIwooJ9TX509DpKXbxWcr/O7N/4hYtXf0v4BV19E15zDj3
 ujBsrm6YXdhdkk9qtBuZCvyskx4Y3ajr1MR3I9biiVUSRG83DPQxCfoCJtUr3AyypVLo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ighi/oMVp9tFTOBbBxmTii0DJ49JmSpk0alZtgjwyEE=; b=FxpotS+TIJoI8GZWxzaLCYoWoH
 7wca8z5ZCUlN4TLfre3wbENBlZV76CHOql/M4PJp8N10HYdJh55taZnIecWTkHL/0g22lzCfKC7CX
 Q6rpYAyShU/PkBZnr8b7Ea+7ohMLa/URAm5o9bp70x51xsGHViq+fZhYWlNvYx08Qkm8=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jLVjC-009QTF-9S
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Apr 2020 17:40:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Ighi/oMVp9tFTOBbBxmTii0DJ49JmSpk0alZtgjwyEE=; b=A14JlXhDhbCpugXDKFmJjxkAR1
 3FxwFK0ASLf1JXMVK3NNyPLaPDT/3cSBQAbIvS9KC/HcKlUt0tR9PJd0dduozFawoDCEsaiog7woQ
 MVk6pjT8OFvdUKVaP5Pa0RUm0nQ9vgnr0R+2HwysLODLyNYep2w2v55KnJ7jUHnz311KCyPZ2wdv/
 xu5Dw5wZewwIBA3kerLLfXnC0y8tVljROTKczdG1OIHFpmgYzbJ4EE1Xh4gmfaIf8zVwsucwE4q7H
 GfUL7yOaJr/KNw0T91jZm7VyqfkznbFBJZXE3XaNyKpAE3YSBxo4B8J6XIoRH1txvvJOkCeN0IfvZ
 +DPzvOJg==;
Received: from willy by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jLVj3-0006Ck-Jn; Mon, 06 Apr 2020 17:39:57 +0000
Date: Mon, 6 Apr 2020 10:39:57 -0700
From: Matthew Wilcox <willy@infradead.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200406173957.GI21484@bombadil.infradead.org>
References: <20200406110702.GA13469@nautica>
 <CAHk-=whVEPEsKhU4w9y_sjbg=4yYHKDfgzrpFdy=-f9j+jTO3w@mail.gmail.com>
 <20200406164057.GA18312@nautica>
 <20200406164641.GF21484@bombadil.infradead.org>
 <CAHk-=wiAiGMH=bw5N1nOVWYkE9=Pcx+mxyMwjYfGEt+14hFOVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=wiAiGMH=bw5N1nOVWYkE9=Pcx+mxyMwjYfGEt+14hFOVQ@mail.gmail.com>
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jLVjC-009QTF-9S
Subject: Re: [V9fs-developer] [GIT PULL] 9p update for 5.7
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
 v9fs-developer@lists.sourceforge.net,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Sergey Alirzaev <l29ah@cock.li>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, Apr 06, 2020 at 10:04:11AM -0700, Linus Torvalds wrote:
> On Mon, Apr 6, 2020 at 9:46 AM Matthew Wilcox <willy@infradead.org> wrote:
> >
> > POSIX may well "allow" short reads, but userspace programmers basically
> > never check the return value from read().  Short reads aren't actually
> > allowed.  That's why signals are only allowed to interrupt syscalls if
> > they're fatal (and the application will never see the returned value
> > because it's already dead).
> 
> Well, that's true for some applications.
> 
> But look at anybody who ever worked more with NFS mounts, and they got
> used to having the 'intr' mount flag set and incomplete reads and
> -EAGAIN as a result.

That's why you had me implement TASK_KILLABLE ;-)

> Are there apps that react badly? I'm sure - but they also wouldn't
> have O_NONBLOCK set on a regular file. The only reason to set
> O_NONBLOCK is because you think the fd might be a pipe or something,
> and you _are_ ready to get partial reads.
> 
> So the 9p behavior certainly isn't outrageously out of line for a
> network filesystem. In fact, because of O_NONBLOCK rather than a mount
> option, I think it's a lot safer than a fairly standard NFS option.

The NFS option has been a no-op for over a decade ;-)  I agree with you
that O_NONBLOCK is a good indicator the application is willing to handle
short reads (or indeed writes).


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

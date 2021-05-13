Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B7237F8EB
	for <lists+v9fs-developer@lfdr.de>; Thu, 13 May 2021 15:39:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lhBYp-00085z-4Y; Thu, 13 May 2021 13:39:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <willy@infradead.org>) id 1lhBYn-00085o-1i
 for v9fs-developer@lists.sourceforge.net; Thu, 13 May 2021 13:39:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7qdcsekCpDC0XbH1OXVUDI58yFo8Z7At/i6/i0XMALI=; b=YIGFBABmjWEceYcFxkbpH8Umna
 LoXunn5V+WaLTJc3yVdcqUlrzOuT2EwQMEHRNx0PcmFwfHRbftVW7F8XhL/XcioUpHNcOUyF3KS/3
 qv7Fyh8RAtRAW95eQlBYuYlg8mPdt48NmdQQ7txtLC5eKMYvcmZ+LqS5SsSw5xb66w7o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7qdcsekCpDC0XbH1OXVUDI58yFo8Z7At/i6/i0XMALI=; b=hVdk/FPEZ828VTNGj7dDMUsk9m
 6n8YcB6ZFagC520eyEUw93N/tb5AjglKRjZ1eEMX8Osp36ltgPNQ7ZsFVsHS6qR+PYHz4wA4/rLih
 NNsGCirYICRa4UDa5AW2zFu/7NQAPkzJh5VIqL3CGXUqF2PyI5i+MKkeRdiLMvd5O4Ww=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lhBYh-006mCH-SW
 for v9fs-developer@lists.sourceforge.net; Thu, 13 May 2021 13:39:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=7qdcsekCpDC0XbH1OXVUDI58yFo8Z7At/i6/i0XMALI=; b=tfkCjdPhG2JWyiamQqLUcVIUaa
 XIAK/k2n62tt+Wbf/46OEwAYMQmA+a7bxfjCQNJeofqSoJn1tx8g09UAvpof8TiISSa9sOFxVSN8w
 nCvW92rZta0Ztby0RSYVTKYOkyXuxIu5khMZE9L+bS3UvMSj+aeeIUOr7y/BZ0s3moMIBGnmRaaSy
 08Fy6gD4Ww+T7IVNTy+9uiKfwl9bw9+Ie3saiCuYJSsI+W//LBbl1U4U9o+0MyqTusGI62zeRBaCe
 sAGJMylp/ZwrTaXz1ygWi77JLYrKiU3A1rF9dV6x19gN9MMMDWs8rVF6qFAXnGsUza3T3lvP2KglO
 Sl13Etjw==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lhBU3-009Sko-72; Thu, 13 May 2021 13:35:00 +0000
Date: Thu, 13 May 2021 14:34:35 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Steve French <smfrench@gmail.com>
Message-ID: <YJ0q6/Oe5yJ+H+Tn@casper.infradead.org>
References: <YJvwVq3Gl35RQrIe@casper.infradead.org>
 <CAH2r5msOQsdeknBdTsfMXYzrb5=NuKEBPc4WD1CkYp10t19Guw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAH2r5msOQsdeknBdTsfMXYzrb5=NuKEBPc4WD1CkYp10t19Guw@mail.gmail.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lhBYh-006mCH-SW
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

On Wed, May 12, 2021 at 02:28:41PM -0500, Steve French wrote:
> I don't have any objections as long as:
> - we see at least mild performance benefit (or at least we are
> confident that no performance loss)

Nobody's complained of a performance loss in the other ~30 filesystems
which have already been converted (some almost a year ago).  And CIFS
has one of the more convoluted readpages implementation, so I'd expect
a higher likelihood of a performance gain from CIFS.

> - it passes regression tests (the usual xfstest bucket)
> - it doesn't complicate the code too much (sounds like it actually
> might simplify it, but needs a little more work)
> - make sure that the usual tuning parms still work (e.g. "rsize" and
> "rasize" mount options) or we can figure out a sane way to autotune
> readhead so those wouldn't be needed for any workload

One of the enhancements added as part of the recent netfs merge
was readahead_expand().  Take a look at it and see if it works for you.

> But currently since we get the most benefit from multichannel (as that
> allows even better parallelization of i/o) ... I have been focused on
> various multichannel issues (low credit situations, reconnect, fall
> back to different channels when weird errors, adjusting channels
> dynamically when server adds or removes adapters on the fly) for the
> short term

Understood.  Only so many hours in the day.

I think
https://lore.kernel.org/linux-fsdevel/1794123.1605713481@warthog.procyon.org.uk/
is the most recent version, but as Dave notes, it needs attention from
somebody who knows the CIFS code better.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

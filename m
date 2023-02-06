Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF27B68BD75
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Feb 2023 14:04:09 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pP1AH-000201-3Q;
	Mon, 06 Feb 2023 13:04:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pP1AG-0001zp-9s
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 13:04:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZcKbkVA3ka28MVzYGsfehL8Iyee/qk5FWxF/aD8CBgs=; b=bN+6Uz7cirswi1za3TbnAOvosB
 orAfzHNmzxophsx07VUx16tboic47X+v8WWUmnJa7zkotmc7qL9YYBErC+KEO5LeYAFbI/by4L7jS
 5pNNZgwJiVG8OCEZTVYYYjMIJu3t54fj5iO427vynkPkAZU7Gz55HTAhQrWNvobyhiTo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZcKbkVA3ka28MVzYGsfehL8Iyee/qk5FWxF/aD8CBgs=; b=atFtY1Ktd98byh1Sf8X8TOtgc4
 ZkZ2SaK1n8TSGA3zz6GhCTYvIQS2UIzRJjyp/jbUEkkOmT8blw/4KWaLXXIsw0tVFsAfmLPF7FHRX
 fpqQB5PAyJuFqUFjcEgrzJjX8wKj19am6vGIBEoJ/sAmEtmyh/rAP7A9EtyV76rK4gIQ=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pP1AE-00CZQ8-8o for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 13:04:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=ZcKbkVA3ka28MVzYGsfehL8Iyee/qk5FWxF/aD8CBgs=; b=ur0XIR+dbGHI1Z3Ai/3T72KYD8
 UZvkbQjIbeopdMKyMYnuXM9PL7DO/5TUWa3nev2eLgeQArBNlfkUrVRB2SNW/Aa8EzgEM6M6UIooF
 PJQQLyZOtsoFa6/IKWG3NFkLHYWtzo82ZcVIbj4llHlN6+RFJdHr5EifVBT/troLjmFHWacQ6Mo5Y
 h9zxPmQWLpKPE3yuZLvNlAvGfAMDjWN4ta7uu1X/TGh7fj/XmQpCTvdT4Rd35bB3B/SV6II69Sv5t
 FEBmtzwE/GGAUSSoQRb+5TnHcE4K9FlRJPFQa0iSTxkFO0/smaOycwMLFsFFSrNq53tSCeeB51Ojj
 GtPSrMQFtodW6tYWFDAQX/vd2f9r7COerVfVbxWkADw52ajws/oKNGXqAEbAdTuUfJCb8VaOgUBTx
 h+0ZuI6xRgd5c85A4BJ8itovxF3NrT+wDHifBUZ0YydEqmthEvKQVN5oKH3YWMhDU1Chq8xQwXyQZ
 wRxVV4F0znExaUncMtvWiTJDJs/KCsCfghOda1fQImdSe52xdfG2RN1sabEWV+lvK0WKtlkN0zEQv
 /SEHXS9NcFGkJ4Z59I91QggU3Lu4CJ29RMm7dxcAy3q0fBY38Gd0V7kIhBsKakA+sXLpb9wX0H+Az
 vbr2jNrJcFZoP+oDL5qqpdFWovKH4+WUpkZZhIjec=;
To: Eric Van Hensbergen <ericvh@gmail.com>
Date: Mon, 06 Feb 2023 14:03:58 +0100
Message-ID: <9010570.AfT4dvHSuA@silver>
In-Reply-To: <CAFkjPTkc-f11p-+ZCV-wRtpT5SbyYBodAzbEHciTRH5CY1br9A@mail.gmail.com>
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <2302787.WOG5zRkYfl@silver>
 <CAFkjPTkc-f11p-+ZCV-wRtpT5SbyYBodAzbEHciTRH5CY1br9A@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Monday, February 6,
 2023 4:44:27 AM CET Eric Van Hensbergen
 wrote: > I have a couple of different ways that are triggering the warning,
 so > you are quite right that there is more work to be done - [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pP1AE-00CZQ8-8o
Subject: Re: [V9fs-developer] [PATCH v3 00/11] Performance fixes for 9p
 filesystem
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, rminnich@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Monday, February 6, 2023 4:44:27 AM CET Eric Van Hensbergen wrote:
> I have a couple of different ways that are triggering the warning, so
> you are quite right that there is more work to be done -- which is a
> bit concerning because we are close to the merge window.  Guess we
> won't be making it.

Yeah, please don't rush this. It is too early to merge this IMO, even if 
potential fixes are identified soon. Considering its current state I would 
still prefer testing this series for a while and also taking the time for 
review. There are no reviews yet, right?

> The particular call path you ran into though may be fixed in a
> different way -- so calls to setattr trigger a flush of the writeback
> buffer -- this happens regardless of whether we are working on an open
> file or not.  Might be easy enough to prevent flushing if the file
> isn't currently open (because there should be nothing to flush) -- but
> I had a second question: why are we flushing in the first place, this
> seems to be traced back 12 years to a commit from Aneesh where he is
> concerned that if we change the mode or ownership of the file then we
> won't be able to writeback, but that shouldn't be a concern because if
> someone has the file open under the original permissions then they
> should be able to write regardless of someone changing permissions
> underneath them.

I can't say for sure what the motivation was, as not being involved on the 
party back then, but keep in mind that Linux client currently collects a 
constantly growing amount of open FIDs indefinitely, and at a certain point 
e.g. QEMU is forced to close some open FIDs to prevent a crash, which QEMU re-
opens later on when those FIDs are accessed by client again.

> I just verified this on linux, if I open a file, I can continue to
> write it even if someone changes ownership or permissions underneath
> me until I close that file.  So, I think we remove this flush. (the
> filemap_write_and_wait in v9fs_vfs_setattr and v9fs_vfs_setattr_dotl.
> This doesn't solve all the problems I'm currently chasing down, but it
> will take care of this instance.
> 
> Now, that being said, original plan 9 semantics say a null wstat is a
> sync operation, but it is not clear to me that we ever get that via
> the Linux VFS path and such calls are sent via write_inode functions.
> Looking at that code, I'm actually not convinced it flushes the buffer
> to fscache (if you are using one) before it send the sync, but I need
> to look at where that gets used in a call trace to verify.
> 
> Thoughts?
> 
>       -eric




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

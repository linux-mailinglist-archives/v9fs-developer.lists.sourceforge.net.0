Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B191B2CABDF
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Dec 2020 20:26:12 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kkBHu-0007SP-SL; Tue, 01 Dec 2020 19:26:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+0e78af3f58b0773fc108+6309+infradead.org+hch@casper.srs.infradead.org>)
 id 1kkBHq-0007SF-Rp
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 19:26:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ctr5EXXYW4g8lMkVbVgbcb+rbE/UuR8LXlO9Lx8gDs4=; b=EF/VIbuzP5jmzr6ZZMs4xWUNCL
 LZgQRPDwGVs5g46MJveZYvt2lGxs16+q0hdNXcQoufY+YWDSJQVPNgM5cQE1LjGGZT4vuhp01UYiQ
 cnQxGVdDSYX4CvdDf3EOjVruEgrvf2qMMKedmG1/UNxpmGfq2JOgVeWGv7Zz3LCiR61A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ctr5EXXYW4g8lMkVbVgbcb+rbE/UuR8LXlO9Lx8gDs4=; b=TMwnF49/gLvrugffrrtuDQGaEe
 Bl4W1fPe5LdsBb9bxjSIHYCeZPD91NJgTaqFNcyJ8RllAsubbakfxM3AHT4HuBIVG2KXbTSQ+NrKd
 HSfP5nMdIY/eclR+LQp1JVBwBz67o/kF4J6+B67YPBRszF5t9DFrV/jRZSPH0+DQ66xE=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kkBHk-00EYz5-1R
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 19:26:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Ctr5EXXYW4g8lMkVbVgbcb+rbE/UuR8LXlO9Lx8gDs4=; b=Jh7/ko0PEnqEzZBmawFj4/rhOp
 XSdYhRKXPwvJfh1JZxISV0rFsgnqsclg9Sl2BdeTZrGbBncTXSGj8YAdGNw9zw84WoJajSejWUghz
 1Vahso77Of3gfu1IEJr9zHumHC3SeFBjmsDFRRvsRFZIO4ZvKbwv1YaoPUmgDv3YKZoRKsmzMHbLm
 o8Lo7DtbOpJBuE2PN7gMLHjWWMUmQHL+VuNZ1itm7kfXtRb28UDLx+32MW5f6bCMfkRCMvGy3X/bL
 PPz6FakeDtzwQjWuEmI1GyGcFU4lXAIR8+1/BcIDDNPPuIdgw/m8+5YPY6c9Ts4COYsduKUfx3FPj
 BUfJmb5Q==;
Received: from hch by casper.infradead.org with local (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1kkBHT-0006Cu-Qm; Tue, 01 Dec 2020 19:25:43 +0000
Date: Tue, 1 Dec 2020 19:25:43 +0000
From: Christoph Hellwig <hch@infradead.org>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20201201192543.GA23073@infradead.org>
References: <20201201151658.GA13180@nautica>
 <1606837496-21717-1-git-send-email-asmadeus@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1606837496-21717-1-git-send-email-asmadeus@codewreck.org>
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
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
X-Headers-End: 1kkBHk-00EYz5-1R
Subject: Re: [V9fs-developer] [PATCH] fs: 9p: add generic splice_write file
 operation
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Toke H??iland-J??rgensen <toke@redhat.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Tue, Dec 01, 2020 at 04:44:56PM +0100, Dominique Martinet wrote:
> The default splice operations got removed recently, add it back to 9p
> with iter_file_splice_write like many other filesystems do.
> 
> Fixes: 36e2c7421f02 ("fs: don't allow splice read/write without explicit ops")
> Cc: Toke H??iland-J??rgensen <toke@redhat.com>
> Signed-off-by: Dominique Martinet <asmadeus@codewreck.org>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

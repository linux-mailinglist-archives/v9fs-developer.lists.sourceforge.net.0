Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B553296C8
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Mar 2021 09:08:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lH05H-00056y-AC; Tue, 02 Mar 2021 08:08:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@gaia.codewreck.org>) id 1lH05F-00056r-L8
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Mar 2021 08:08:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jo1ApVji+2tQwiUYRWmYN3Y+RBqiduiLhHfkJ1tbAVI=; b=hLkr9KsGDI3Ire+ViPwJcIjWoh
 nQHD4gMAAXYn3kiUIYyj0wQVmkxKCrn0l+s+i3XEaPmLbP2nzPzy5H/NiKOzdcr9ymRvwHWXBHdSh
 ZRURQzW+NDkhhKwqJ967+s4Kly0NN+LBVw5iC5zh8yKExcbr5U0dwvPN0vzfLZsaeIgI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jo1ApVji+2tQwiUYRWmYN3Y+RBqiduiLhHfkJ1tbAVI=; b=ee6nrCcWAix2O8cp+lZpbln3UU
 RdBfZWQR87xsUqFbGlfp3TCfi8dOsTxXCDMtHfv7+ZSFNkuKXae4mGADbB326BU1YVvHbLNvByY0E
 38AMVGVtBDL3alOFWYR4ARfaXXNt9lLmUT8NWGX+fKvzcf67jlpchqwhvIUHu1jlZnjE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lH05A-00AwAG-BE
 for v9fs-developer@lists.sourceforge.net; Tue, 02 Mar 2021 08:08:45 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 0644EC01F; Tue,  2 Mar 2021 09:08:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1614672514; bh=jo1ApVji+2tQwiUYRWmYN3Y+RBqiduiLhHfkJ1tbAVI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0cNN7pnls8BE7DnPzkHaXGu9tEd7hrNWUN75AnMdJUaMT8PBKw9A5YNP1gSwEDhIR
 54cJ4nh030YM7fLrUCymQGkKNu6aRtQryhME1O/sUHfJdkGtmXQM8HasmFjvsPbQ4o
 WiP8E8lFetzeLpp1AXF/WyLKo8vkl7Sfk/GIcx2fWrx7iunSrUIjOR//9zvQGBaT59
 frfOWbOTxTQUDjM81C+iM1/mDtnSPZkTuHQBeOxQ4uqXzEo6aL6K74pxUHfmXj5brP
 M/av2VPnLFEFKkTgO8KVSJskh8ZMlRGwFWtxfgEdQJ2mvB/91q5LRxvEYtIJrPunkY
 mgvpEYktQr5Bw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 161F1C01B;
 Tue,  2 Mar 2021 09:08:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1614672513; bh=jo1ApVji+2tQwiUYRWmYN3Y+RBqiduiLhHfkJ1tbAVI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OpT+RaVXKbY5pxROi3uyhFf/WrZ1CFSp2mGEdK3FHtTsafFaLFy2HkJI9r36aDLCT
 Lj+tn4GZ/4CG9uFLG06ApZEuI4vv7dtKHXzZiZTv/jDnOk4vJjy0dgfND1PDWbzZEV
 WGaVPsYBZrN1u6C9RrBco3Ta+kt3I5xp4CUoVA2eF1rfHUKeMPxyCPZyWrl665TfBc
 x+Z3lTMBwcbUkUluwbdbmPQDbfIRHhjhmBADcqktEBG+1lIBs90BuUu1HpVp0yOOcK
 gl6yXLay7POrbiOxIDbPGnQXDWrR0FxXxo4087PmV+YZ/z8ZCashmSPIzax84UaXdo
 haWi3jPnkh1dQ==
Received: from odin (localhost [127.0.0.1])
 by odin.codewreck.org (OpenSMTPD) with ESMTP id af406e63;
 Tue, 2 Mar 2021 08:08:28 +0000 (UTC)
Date: Tue, 2 Mar 2021 17:08:13 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Message-ID: <YD3ybcx1i8Rtbvkp@codewreck.org>
References: <20210301103336.2e29da13@xhacker.debian> <YDxWrB8AoxJOmScE@odin>
 <20210301110157.19d9ad4e@xhacker.debian>
 <YD3BMLuZXIcETtzp@codewreck.org>
 <20210302153940.64332d11@xhacker.debian>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210302153940.64332d11@xhacker.debian>
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
X-Headers-End: 1lH05A-00AwAG-BE
Subject: Re: [V9fs-developer] [PATCH] net: 9p: free what was emitted when
 read count is 0
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
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, v9fs-developer@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Jisheng Zhang wrote on Tue, Mar 02, 2021 at 03:39:40PM +0800:
> > Rather than make an exception for 0, how about just removing the if as
> > follow ?
> 
> IMHO, we may need to keep the "if" in current logic. When count
> reaches zero, we need to break the "while(iov_iter_count(to))" loop, so removing
> the "if" modifying the logic.

We're not looking at the same loop, the break will happen properly
without the if because it's the return value of p9_client_read_once()
now.

In the old code I remember what you're saying and it makes sense, I
guess that was the reason for the special case.
It's not longer required, let's remove it.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

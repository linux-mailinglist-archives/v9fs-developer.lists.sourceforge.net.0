Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5022F6F86
	for <lists+v9fs-developer@lfdr.de>; Fri, 15 Jan 2021 01:35:18 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l0D5A-0002Gk-47; Fri, 15 Jan 2021 00:35:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1l0D59-0002Ge-Bm
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jan 2021 00:35:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TYtgGdW5Tjmkczl2+bcOLFkw+8sDMLgx5FRHoAdPkwM=; b=maThX7ZtyFklnsT3jmBhmtuwNP
 X2YI5nHnbm09cTkPqLllp3fKB1Ex+mKyEXIRYNqC0wQFTk6xkXBP/Ea1DS/EZDSuir/3XWRhM+lXI
 O/FX4tIjEx2D3Z2IgJVDtbXJ6C7Keb2rFEEBGfcidLTRfitzjwpG4xch9BB1ZGwwhZbo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TYtgGdW5Tjmkczl2+bcOLFkw+8sDMLgx5FRHoAdPkwM=; b=Fw8vRCSZwoGo5Ee5wT0pe/NduG
 7NWDmBZgsabcVokscLwjr497r8XLF0mjwi7B/k8BLwfE+hA5oCi1fGrEM0l/qrvda3ANFZfyrEylN
 cXEKJBNN+rjJUZ73FU2DjPIquRRQbDu4d6VU7Nrjt1yZnN5g6CYn+fLm+uNogLmx83dE=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l0D4x-001vpF-KY
 for v9fs-developer@lists.sourceforge.net; Fri, 15 Jan 2021 00:35:15 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 47B9AC01B; Fri, 15 Jan 2021 01:34:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1610670896; bh=TYtgGdW5Tjmkczl2+bcOLFkw+8sDMLgx5FRHoAdPkwM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XIhzjCAJozkDzr3MA06XXWmZDH0oscm4ncFqLqVoaVx4EwMi1CIw7c41w5YEJubdw
 xN9uXcQz6i1WMCqhkXzrq/aE6hRgBOsnn5PBs2Sq4piHS0qGE/lT8y65V23MDeQ+XP
 pmCCZ+H6zWWqEpIi0anMLcEjJiRUWvllb/rb8xhpbE4qyLg/ZsmNw4eL3XdGtnIRhL
 /qtLW/lFs4MhHeQ94NF1WjmVK9MQHqW9c8Jhr3MdAL/CKpzBB2KaFCLYrYnFmTRjKH
 9EVZipWGJwI0I5/NuxhNWQ2GRBy277D7Q6HjVY8nv8NIThVAd+KxjzH9BnGQ8oQefN
 70fxjMfM67uQQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from tyr.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTP id A7FA6C01B;
 Fri, 15 Jan 2021 01:34:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1610670895; bh=TYtgGdW5Tjmkczl2+bcOLFkw+8sDMLgx5FRHoAdPkwM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ve26Aw1YjvicIhUlvZsqlmoOxmYz1T6H+byzy34B8UIpbvkqbd6JHPntkFQbDpBRQ
 5s4GjuUVcXgO9fBsozNPdERd6bkznFrlFDBU+IKmSuLZrYt9r9W9sOFK8Hxev74iZ7
 pcTjB6ZM1MuVdSUCbVkOGAJo23mj2RI52acIJmzQu8TS+3gtq5smBB4g+IVfpD+4Nd
 +vZApX1AuzzBKv74nDx0MDGNtsoV58UAXnMnue+QTaP+vxjK5S8QNZpG7WdcYsFXIm
 YQvVCIR4vzFofXcFYLet5yRKvsvwv1TpTEr/jVXypG+SblXVpSKhT66CsrJPeeQQ0w
 VlHFJ8dUKBPKw==
Received: from tyr.codewreck.org (localhost [127.0.0.1])
 by tyr.codewreck.org (Postfix) with SMTP id C0F51280235;
 Fri, 15 Jan 2021 09:34:54 +0900 (JST)
Received: (from asmadeus@codewreck.org)
 by tyr.codewreck.org (mini_sendmail/1.3.9 19Oct2015);
 Fri, 15 Jan 2021 09:34:54 JST (sender asmadeus@tyr.codewreck.org)
Date: Fri, 15 Jan 2021 09:34:39 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Lee Fallat <inbox@leefallat.ca>
Message-ID: <20210115003439.GA7955@tyr>
References: <8348aae300bd225096231aeeb08ab92358385a08.camel@leefallat.ca>
 <1f86c93f694d752786abb06d717cfa65afbc0cf9.camel@leefallat.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1f86c93f694d752786abb06d717cfa65afbc0cf9.camel@leefallat.ca>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1l0D4x-001vpF-KY
Subject: Re: [V9fs-developer] v9fs not responsive with Rflush after single
 Rreaddir
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
Cc: v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Lee Fallat wrote on Thu, Jan 14, 2021 at 06:14:22PM +0000:
> Does anyone know if at the very least this is intended?

Could you develop? I see this mail as a reply to something but I don't
think we ever got the first message.


From the little I understand of your question here this is weird -
rflush should not come on the same tag as rreaddir, ever.

rflush should only come as a reply to a tflush, which will alocate a new
tag to have its own response handled so if the rreaddir comes in
parallel to the original tag the response can be handled (it should
actually be ignored)
The current code is far from perfect in that if the flush never comes
the process that issued the tflush becomes unkillable, syzcaller
complains about it regularily.


Note the whole flush v9fs mechanism has been meant to be reworked for a
while, so the situation should improve within the next few months as I
find a bit of time to work on it. I've got the last piece I needed with
the last merge window.
The rework will make any signal (^C or similar) immediately return back
to userspace after sending a flush, so the problem I think you describe
should no longer happen.

-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

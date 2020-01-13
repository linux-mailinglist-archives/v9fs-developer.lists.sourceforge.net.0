Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A286E139252
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Jan 2020 14:40:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iqzwr-0007ie-To; Mon, 13 Jan 2020 13:40:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kyle.smith@euro-pinnacle.com>) id 1iqzwq-0007i7-Rh
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jan 2020 13:40:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:MIME-Version:
 Content-Type:Sender:Message-ID:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F6V9hR68vhH4EvSkjxNyTVMmJU875hAMlILUG9mB0tQ=; b=LRuaT2p6YXdWtItuiQVe7ZkO9a
 V4kyUqNEp5wtTZSBBXJ+IM4ccf9MjY1DdKYRgQvqkemG0NVJZ0Anv7biXd6fbxs79av5yY1RViCj5
 Y2UkdgeENngm01HdB//zhjm5FVcHmQYKbE9lX1P13H5wrf9zKqb/mo4bkfCm8BxSzj/c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Reply-To:Date:From:To:Subject:MIME-Version:Content-Type:Sender:Message-ID
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=F6V9hR68vhH4EvSkjxNyTVMmJU875hAMlILUG9mB0tQ=; b=E
 E28LFnsTsgMJq6zOVzJ8wtV5NphbjF95PeyppX64SN28gBvS9Dvpk9fPQTr62qGqJIyaRuo9989HQ
 si7wB2BkYV2renCm2YiY1fMv1x5VsWGmo4p2LyiOdmNdQH+Js1BSBdU82hpXtw6oUzfpBM+XwPfgw
 BvbqH6kRXSO7GQ/E=;
Received: from [45.125.66.212] (helo=rdns0.snrkntredrkon.cf)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iqzwp-003B7l-5A
 for v9fs-developer@lists.sourceforge.net; Mon, 13 Jan 2020 13:40:04 +0000
MIME-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
From: "Kyle Smith" <kyle.smith@euro-pinnacle.com>
Date: Mon, 13 Jan 2020 13:39:50 +0000
X-Spam-Score: 7.1 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [45.125.66.212 listed in zen.spamhaus.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 MISSING_MID            Missing Message-Id: header
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iqzwp-003B7l-5A
Content-Description: Mail message body
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] Investment Seed Capital
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
Reply-To: kyle.smith@euro-pinnacle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1iqzwr-0007ie-To@sfs-ml-1.v29.lw.sourceforge.com>

Attn:CEO
 
    
I have an investor looking to invest in entrepreneurial teams with big ideas and a need for Seed Capital to turn their business or ideas into great Companies. 
He has funds available for Investment and want them invested under you or your Company strict guidance. For more details, please reply to this email so we can discuss further.
 
Yours faithfully.
 Kyle Smith
 Mobile Whatsapp  + 1 (646) 441 8989  (USA)

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

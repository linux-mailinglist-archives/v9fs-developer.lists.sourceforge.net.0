Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D99F8D27
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Nov 2019 11:47:37 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iUThv-0005Ir-2c; Tue, 12 Nov 2019 10:47:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <info-v9fs+2Ddeveloper=lists.sourceforge.net@cyprusweddingday.com>)
 id 1iUThu-0005Ia-A0
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Nov 2019 10:47:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Reply-To:Date:From:To:Subject:
 Content-Description:Content-Transfer-Encoding:MIME-Version:Content-Type:
 Sender:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7q9n6Tr6N62lgCu9r1nm9kAiVScpDx9nrmiyZWB09P0=; b=C8CGJ8vmtP7bX+qZp9DGOnB3W9
 Yn77iZ6NJl/xQT38SP7xh4kDn4ghQyb1eb9m4jvYrCxXJOKD6MPmlksvFO/LZkxTxijaBhSThfKBO
 AtS1JXqn989HXo8KbFicPgVgjDwoebR7J9HIQ17NyZzpCtWPw03UfElOTTaOjdz/TeGU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Cc:Content-ID:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7q9n6Tr6N62lgCu9r1nm9kAiVScpDx9nrmiyZWB09P0=; b=lsBgIPRBUXKVdUe8TXvOun1Nxv
 dz6pZOb9OK3F1nJHOaOBaq9vJ+TwLCieo7k6YfuauRr1qvz5RHcax8eKZA3yc2La/5vI/A1akB4Hk
 qDHX8jyngaJsAB3tK71s4n1pd6lBXPpqrVHK4BmhXozP5Jln91/QrhVUm+LYsTg6BddE=;
Received: from mail.iserviceltd.com ([157.245.160.152])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1iUTht-00D8c6-9U
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Nov 2019 10:47:34 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim;
 d=cyprusweddingday.com; 
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To:Message-ID;
 i=info@cyprusweddingday.com; bh=18TjuDxD2VZoK6udkStVVKxmrSQ=;
 b=YXszUeIf5WwRrC1E5XgK1lg1iUZjadSUyMCG7Fwt58YZZWjlPhdGLbzVCrZd9BY4Lh6b/bx8dy7F
 Bu7opnVeUUnIKrwgBBpG7dprKAJGpUpoNmSLmIjUIP2hEcwbnDRUGnOzWJXTnmOBGgGBaYWST/NY
 pE66TaQdkM2WFnWJdzvLUXIbt3WJEUfce/Bot+qJXatDrW7QYUjbzFTCjbeNe9p50dd3IfK8ETxd
 Lzv1Bt8KtRy3nbNZSF96ftl0gGXgn+/58TFsv0zV1Epy4wGODsCzwfW3SGJQteiyI8KAWtiST2m4
 4X/RaPKWtisSLnXBHI6Bqucpcncbia3sXROEuQ==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=cyprusweddingday.com;
 b=bFlELqjlVNzIBHvEvAU7g/wU9a6N1pAcGRaq6oFQBoIS8tqgcxr3bYBK4HabsqmJaEmdf55drX0v
 TgEzO2f7O5wSZ+C4rzDxmcuhaeQBn7wm48rh5GVM/7XhGB7t/Eni3qO8tk1SEilJAf9k+r+r84bf
 ROKaIYotXxtawfP5NZiMn4tJG/t7jaryMxfkNfPA8ulcENeYNDvpHT/HgUw8P2bJOpX60UKZKPxs
 65gOnpkYu6HbjEfDgZgaD9oA4m9Y5ztvNub8IpZi+8PAcHp6mKjBqu9uFlVVLBm55KiMmm+E9C3i
 fXp2AtJL/kkDiehYqU+nJzXut8ZmLpjAd8tIyw==;
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.iserviceltd.com D87507141E
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
From: "Portfolio Managements " <info@cyprusweddingday.com>
Date: Tue, 12 Nov 2019 12:47:23 +0200
Message-ID: <0.0.2.B0B.1D599469293AFBE.0@mail.iserviceltd.com>
X-Spam-Score: 6.6 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [157.245.160.152 listed in psbl.surriel.com]
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [157.245.160.152 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=mfrom;
 id=info-v9fs%2B2ddeveloper%3Dlists.sourceforge.net%40cyprusweddingday.com;
 ip=157.245.160.152; r=util-malware-1.v13.lw.sourceforge.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iUTht-00D8c6-9U
Subject: Re: [V9fs-developer] 11 November
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
Reply-To: potfolio.management@aol.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Good Day ,

I am outsourcing individuals with proficient abilities to manage a vast wealth for an Arab Angel Investor with beleaguered political situation. These funds can be invested in tranches of 50 M or a tranche that is suitable for the portfolio manager.

If you have Investment and/or Portfolio Management abilities, credible projects in need of funding or existing businesses requiring expansion, we would be delighted to work with you.

Sincerely,

John


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

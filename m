Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9381BADD2
	for <lists+v9fs-developer@lfdr.de>; Mon, 27 Apr 2020 21:24:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jT9MJ-0005GB-0c; Mon, 27 Apr 2020 19:24:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <kyle.smith@afggroups.com>) id 1jT9MI-0005Fu-FA
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Apr 2020 19:24:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:MIME-Version:
 Content-Type:Sender:Message-ID:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hAWfDv9gn0qwFdgppXwhpVSc+6WVdIwmOJlnk98fxc8=; b=TPz25r8oZR7TdQJCisS4UqFrU9
 hH++HAGqrH+6m+JwiWRsS5AaiOCl7zqvE1wLwo4tNjKOuHJDFcGiCi9nu8CXOEKpbRNZSIWordxPe
 HzuYnrQWGNVLuSykhUBHSyNk7HOpfaMacu4lezcn2H5zOHe9n0AG9S9NJn6YKBXMd1Rw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Reply-To:Date:From:To:Subject:MIME-Version:Content-Type:Sender:Message-ID
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=hAWfDv9gn0qwFdgppXwhpVSc+6WVdIwmOJlnk98fxc8=; b=Q
 RJe7eyAZgI8Yvs9spBEkIJByUGpBElusc+fd/fQG0a8gFROHgsxEJ+gr7IzbYXjyZwuGllg6g+RBO
 cogPEY6QcfEeCOU+V+LBlaGM1F5KP1OJV+RwsVvvd2KgvleE5EDkz+c5uPeh+djMNoKomJu8+yCPO
 qaHldtIONtzuoxFk=;
Received: from [139.59.47.202] (helo=mail0.53.zamailnx.club)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jT9MH-00GmK8-0b
 for v9fs-developer@lists.sourceforge.net; Mon, 27 Apr 2020 19:24:02 +0000
MIME-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
From: "Kyle Smith" <kyle.smith@afggroups.com>
Date: Mon, 27 Apr 2020 12:10:44 -0700
X-Spam-Score: 7.5 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [139.59.47.202 listed in zen.spamhaus.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 MISSING_MID            Missing Message-Id: header
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jT9MH-00GmK8-0b
Content-Description: Mail message body
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] Investment Projects
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
Reply-To: kyle.smith@afggroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1jT9MJ-0005GB-0c@sfs-ml-1.v29.lw.sourceforge.com>

Attn:
 I have an investor looking to invest in entrepreneurial terms with big ideas and a need for Seed Capital to turn their business or ideas into great Companies.
 He has funds available for Investment and want them invested under your Company products strict guidance.
For more details, please reply so we can discuss further.
 Yours faithfully.
 Kyle Smith
 Tel: +32 460 213469

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

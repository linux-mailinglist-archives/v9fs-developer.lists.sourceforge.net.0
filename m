Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 23044377AFB
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 May 2021 06:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-Id:Date:MIME-Version:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WBhCRoxZi0HaowHLEX8QiC7yjS2z5pPRi7wsEQX1IsA=; b=H0UpudoReRkCN/TTFYzkzHux4c
	cMrqGyq/ftYFG3ejABucKGdTuLadtM5lw4j2HqLsNF8lJtdsHVr/caXEF9k5L2PrI6JABivgeCl4p
	4iojM9b5GouTjzwatax+t3FMjoX/szyku02Zxa+lWsmmYcBppjLsLjJiByDH511R/a+E=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lfxRg-0006xs-Tw; Mon, 10 May 2021 04:23:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <noreply@tenacitylogistic.com>) id 1lfxRf-0006xc-98
 for v9fs-developer@lists.sourceforge.net; Mon, 10 May 2021 04:23:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q7ir9MQSpL6JK8bBxkwADBjZs60f2qdr4S0z5Duq3Pc=; b=iTYLRCJXJPv8BQb6W+7pjQxAJ5
 nQwUzsm07vznYKsfw+1oTf9+fi5CpIUQBYhrB/0VBZPZlNZInc6qcusRjEs0m7chX/tltmWqqKJbV
 BWqiPEDFSOSUg8WXJxSP/6ISbZqd4D7XVPrEtBiMXrbnTQmO9T8cnikvdaMT8LIh8A1c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=q7ir9MQSpL6JK8bBxkwADBjZs60f2qdr4S0z5Duq3Pc=; b=Q
 6jzeEy4zbs0IAVD4mZp/DuPA8QU1D22B4ieblsVdUCOjIaRrHKGrjQ1pWCeMca4uVlUkwxfHTEVF/
 py/jFSQxcbrlf4PYSXf/NgxWrfnGfgzR6x3ig3JbgtCO9nc7sR86b/UnqKRWy95UcBpCGzEbJ7Vz+
 G/dJyJQFtwuL80Nc=;
Received: from li2280-210.members.linode.com ([139.177.199.210]
 helo=mail.tenacitylogistic.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lfxRV-0005MB-S9
 for v9fs-developer@lists.sourceforge.net; Mon, 10 May 2021 04:23:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.tenacitylogistic.com (Postfix) with ESMTP id B36E2A7CE6
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 10 May 2021 04:07:09 +0000 (UTC)
Received: from mail.tenacitylogistic.com ([127.0.0.1])
 by localhost (mail.tenacitylogistic.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id OrCVlcqxBdtm for <v9fs-developer@lists.sourceforge.net>;
 Mon, 10 May 2021 04:07:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.tenacitylogistic.com (Postfix) with ESMTP id 52D7AA75E9
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 10 May 2021 03:54:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.tenacitylogistic.com 52D7AA75E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tenacitylogistic.com; s=B1281846-AD3C-11EB-8D47-8C0B1082957F;
 t=1620618864; bh=q7ir9MQSpL6JK8bBxkwADBjZs60f2qdr4S0z5Duq3Pc=;
 h=From:To:MIME-Version:Date:Message-Id;
 b=MoW5pEGrcFU3Xhs2mFHzgEhsvNYXyqMTeQ6ZM14G42rgYhfnXaWKMnO9lx8VBJIiM
 +iHlPi8kd9GpWpgSHruKL6kliwkUtIZGva0i/wuZWnIeWdQzBelxy7qTklh+LzDpIH
 4mmVTJc4WEn2vX07QvuzRCKRcGzq8cPBHfqPz4edFo8Uf9IJcXINK25kiEFFmVRMj8
 2tlrfr7m2d3mG3u13Xu0R8fD/3Jaq07bL2jIsgMPLYFHZtBWuGGogiOF7GF1qmeiom
 6oszdfxsqPSNO3xXs0AaKU00iPI5lFnhXViIWKLgedhLfXJa1lvAxMTII9HJ0SoCdr
 JJNUgdWNKNvcA==
X-Virus-Scanned: amavisd-new at tenacitylogistic.com
Received: from mail.tenacitylogistic.com ([127.0.0.1])
 by localhost (mail.tenacitylogistic.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ZdzryxaYDXMw for <v9fs-developer@lists.sourceforge.net>;
 Mon, 10 May 2021 03:54:23 +0000 (UTC)
Received: from int-desktop (unknown [69.10.49.233])
 by mail.tenacitylogistic.com (Postfix) with ESMTPSA id 86E11A7CE6
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 10 May 2021 03:48:49 +0000 (UTC)
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Mon, 10 May 2021 04:48:48 +0100
Message-Id: <202110050448487D2D5DF901$A87C2CA3A8@tenacitylogistic.com>
X-Spam-Score: 5.4 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?69.10.49.233>]
 1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
 https://senderscore.org/blocklistlookup/
 [139.177.199.210 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or identical to
 background
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.5 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 1.5 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
 0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1lfxRV-0005MB-S9
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Action_Required=3A_=E2=9D=BB_=28Mail_S?=
 =?utf-8?q?ervice_Upgrade=29?=
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
From: Webmail Support Team via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Webmail Support Team <noreply@tenacitylogistic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


UPGRADE ACCOUNT 

Dear v9fs-developer :

We are closing down all outdated versions of the webmail and you are on old version as of
5/10/2021 4:48 AM.

Click the button below and Sign-in to get the latest version of the mailbox to avoid being
De-activated on current version.

UPGRADE NOW https://ronlighting.co/?email=v9fs-developer@lists.sourceforge.net

Sincerely.
Webmail Support Team

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

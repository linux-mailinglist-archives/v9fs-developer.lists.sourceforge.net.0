Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C29E34E493
	for <lists+v9fs-developer@lfdr.de>; Tue, 30 Mar 2021 11:39:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lRAqm-0006Y9-I9; Tue, 30 Mar 2021 09:39:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <9sporst9@gmail.com>) id 1lRAqk-0006Xo-Kl
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Mar 2021 09:39:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Reply-To:Content-Type:To:Subject:From:Sender:
 Message-ID:Cc:MIME-Version:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=81UwN/0HzSbJMO8xGBs4ZXF5eUh4CFA7oXjensEFVCc=; b=elS0hxGv0nNmH9Y2sU4LNHv4rE
 LBUwYjAb2xVmtLkrOyshI2/rGt7SK0WdvahoF4KzUkdpAygSk40gGT4xnp6jvoHQQY7Hf70Xq3IWD
 ijFaIGMPcw7n6J4qO5R6uw0IFupdb0T61P780s1ohizJwRyxK1BtNhJ9/mmTuZKp2sMY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Reply-To:Content-Type:To:Subject:From:Sender:Message-ID:Cc:
 MIME-Version:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=81UwN/0HzSbJMO8xGBs4ZXF5eUh4CFA7oXjensEFVCc=; b=DX5q4Hs6BEyiPmMTuMV+aJsY+b
 DRv22KR9/zq8kj3nmkC4EPYtg6wA/LgLtGxvpYBk8FekPP1SZuaOUULib7CDydznzVe5aOBB+922X
 J70aCG9XH6VaxeQtCE0mW5Rk/vxMh+1rYAFN4zKvDEjsqHHL0oWJLKmkogRIbAHXtQpY=;
Received: from usa-2.svrip.com ([198.98.62.214] helo=6sdn3b2.com)
 by sfi-mx-2.v28.lw.sourceforge.com with smtp (Exim 4.92.3)
 id 1lRAqh-0002aE-N0
 for v9fs-developer@lists.sourceforge.net; Tue, 30 Mar 2021 09:39:50 +0000
From: "Ms. Kim Chan" <9sporst9@gmail.com>
To: v9fs-developer@lists.sourceforge.net
Date: Tue, 30 Mar 2021 16:39:34 +0700
X-Priority: 3
X-Spam-Score: 6.1 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (9sporst9[at]gmail.com)
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (9sporst9[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (9sporst9[at]gmail.com)
 1.0 MISSING_MID            Missing Message-Id: header
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing list
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
 2.0 SPOOFED_FREEMAIL       No description available.
 0.0 SPOOF_GMAIL_MID        From Gmail but it doesn't seem to be...
X-Headers-End: 1lRAqh-0002aE-N0
Subject: [V9fs-developer] my future investment ventures in your country
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
Reply-To: "Ms. Kim Chan" <9sporst9@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1lRAqm-0006Y9-I9@sfs-ml-1.v29.lw.sourceforge.com>


My name is Ms. Kim Chan Ouk, A Thai citizen in Asian Continent but currently
residing in abroad, I trust this email meets you in good health, I just got
your contact today during a research about your country and I will say that
I foresee success of my future investment ventures in your country. I want
to invest in your country and I would like you to assist me in my investment
with moral and physical advises. Please do reply me as soon as possible so
we can discuss more.

I look forward to hear from you soon
9sporst9@gmail.com


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

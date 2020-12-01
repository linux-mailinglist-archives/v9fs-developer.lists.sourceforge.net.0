Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A2C752CA1ED
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Dec 2020 13:02:07 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kk4M9-0003kV-LW; Tue, 01 Dec 2020 12:02:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1kk48a-00034H-9Y
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 11:48:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Subject:To:From:Date:Sender:Reply-To:Message-ID:Cc:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lACJ+mWa2C3w+e13DckcQEmMDAkDIP3QDlUNr2o7nBU=; b=dRNhGjPhsbRK/1kxfycCV7/Dh5
 yUsHpZmEV3HFuRnUKqopevIYL5EHsoKd229aACSYZWZTKqFELaUX3u3PWeVspU5wOH0c0rW2JI/om
 f/oBeOew8YN0Wnl13Q3eUcfZO0GPVg+a/i78X4VNJQv5obkaOPACZ9OatNhVpxIl/Ha0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Subject:To:From:Date:Sender:Reply-To:Message-ID:Cc:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lACJ+mWa2C3w+e13DckcQEmMDAkDIP3QDlUNr2o7nBU=; b=bsXiydYMTJTE3R4H+U1F7Q4TcN
 rSRXwgyRur2gSP/LxXGAe/I/opxL5VzPNcSyh9hNlEcyaxlFfp0NOqSbYVbhSya/nPCMH8uWPRyYN
 vsRU3PnlocDiOIfGJu7l4Nnt959zcmY2TCSDWuxrtFFw+voJtZefURs6yxTcHF5oCvm0=;
Received: from [59.110.30.68] (helo=crm.mm-cs.com)
 by sfi-mx-1.v28.lw.sourceforge.com with smtp (Exim 4.92.2)
 id 1kk3sw-0091hu-ML
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Dec 2020 11:31:59 +0000
Received: (qmail 8615 invoked for bounce); 1 Dec 2020 19:31:47 +0800
Date: 1 Dec 2020 19:31:47 +0800
From: MAILER-DAEMON@crm.mm-cs.com
To: v9fs-developer@lists.sourceforge.net
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.8 DKIM_ADSP_NXDOMAIN     No valid author signature and domain not in DNS
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 MISSING_MID            Missing Message-Id: header
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1kk3sw-0091hu-ML
Subject: [V9fs-developer] failure notice
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1kk4M9-0003kV-LW@sfs-ml-4.v29.lw.sourceforge.com>

Hi. This is the qmail-send program at crm.mm-cs.com.
I'm afraid I wasn't able to deliver your message to the following addresses.
This is a permanent error; I've given up. Sorry it didn't work out.

<3454556148@qq.com>:
58.251.110.111 failed after I sent the message.
Remote host said: 550 SPF check failed [MJytG+Zx9FpBkWZkFQh/n8GgARVhvYxjMEZj36JNT1rYD83OLNSxuUFpM6hlzu0ogg==  IP: 59.110.30.68]. http://service.mail.qq.com/cgi-bin/help?subtype=1&&no=1001445&&id=20022.

--- Below this line is a copy of the message.

Return-Path: <v9fs-developer@lists.sourceforge.net>
Received: (qmail 8515 invoked from network); 1 Dec 2020 19:31:46 +0800
Received: from unknown (HELO efrf0G4h) (220.186.171.115)
  by 59.110.30.68 with SMTP; 1 Dec 2020 19:31:46 +0800
Date: Tue,01 Dec 2020 19:31:46 +0800
From: "v9fs-developer" <v9fs-developer@lists.sourceforge.net>
To: 3454556148@qq.com
Subject: Re:test
X-mailer: Foxmail 6, 15, 201, 23 [en]
Mime-Version: 1.0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

test is v9fs-developer@lists.sourceforge.net




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8CBCBF58D
	for <lists+v9fs-developer@lfdr.de>; Mon, 15 Dec 2025 19:05:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fZI49YYl1Qx1sQy8qLzM0vFKnBAN56D+ul4Ya3uF4lo=; b=Pf/fHyhnT4jOKxe0FoBOjzYifo
	xhteMSUUD+p0kRJO2stZguolTkdKDDSxR3t+SySMDBXrb4ohKsbxu5z3IjOiETd7bCtQ5uPWf3en7
	D4lvxWLb/kYwqPuUsYSg/xxGggneO4D3Qef+ul9b+B+SoqrxCiauhQsD+iRhM6lSpI2g=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1vVCxB-0000kR-Ib;
	Mon, 15 Dec 2025 18:05:49 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <info@speedemail12.com>) id 1vVCxA-0000kJ-Os
 for v9fs-developer@lists.sourceforge.net;
 Mon, 15 Dec 2025 18:05:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GYx9jkwmM195RWgEcZIB5++94JVjU60RCz67CyZ7iHY=; b=gEobglPOvJ5AfnqJ0myuEaBEu6
 GGKx4SxWFo4DkHYyVoHOYgFW8OGrAQ6z/64Rlu2i5v7MyJLm5dOjl2ufxMkYjgiz+afbPqZaJ8Whw
 7H0Cff1LbmrTEME2O0cEoj8xHeRfdw+5vh0J2Nh8XnAsfJvrfzeE4BLdhf2bZcUGpfeI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GYx9jkwmM195RWgEcZIB5++94JVjU60RCz67CyZ7iHY=; b=V
 wUDsEPRBcDJ+S2VotgstmgFAlC8VlLcB13XtC/UHo8l0H0J88FVzf9coQu9FM1oqZUV7uFziuxWmG
 oWr2+aKwBHLWFFplszgisXTgjAAPaG+7rKBltg4RVdtyrjyogSyJ1UGSIGJzM1+981u+OVS/q/Hes
 FAqBggOd4YbkzTV4=;
Received: from mail.speedemail12.com ([149.56.140.104])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vVCx9-0006a3-Hz for v9fs-developer@lists.sourceforge.net;
 Mon, 15 Dec 2025 18:05:48 +0000
Received: from speedemail12.com (unknown [204.12.218.67])
 by mail.speedemail12.com (Postfix) with ESMTPSA id 05C1C209EF0B
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 15 Dec 2025 03:43:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.speedemail12.com 05C1C209EF0B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=speedemail12.com;
 s=202507; t=1765770210;
 bh=GYx9jkwmM195RWgEcZIB5++94JVjU60RCz67CyZ7iHY=;
 h=Reply-To:From:To:Subject:Date:From;
 b=Jh1DWSGbxwFL1i0oQRL4MLqW6gb6odgx87SNQgNkcncI0zSb9oKp5vK/WEzd10Xx1
 ocXsvfW5cDc0l2s0LoEohwbRDkrcn4k/MQ8KhMfXGsXM9ytsxBv5za/hHrY+qxLiOc
 24wpEwhjjJDJSwBJapfQlM0XQYggsRzQM+eze1u6UowjCvz9OR2EvE9yExrI7kVwrz
 oF9u0DNLk/xgbyaYmZ+t366BAu5SYQGUYD7GdBiGfSO/2sda+09GBjSYRle4BjatuF
 2WSF93xphdnRdUPyvFE3fPHTef+MOIHW2jRhzQEOu0zUUE9gBdCjBLNvHACZsYHBtc
 HD2M9r0Il9FrQ==
To: v9fs-developer@lists.sourceforge.net
Date: 14 Dec 2025 21:43:29 -0600
Message-ID: <20251214214329.CC0FD5F65B9DF1A9@speedemail12.com>
MIME-Version: 1.0
X-Spam-Score: 2.3 (++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Sir/Madam, I trust this message finds you well! We are
 thrilled to reach out on behalf of the Kuwait Oil Company (K.O.C.) to present
 a compelling opportunity for collaboration. Your organization is ideally
 positioned to join us in our strategic ini [...] 
 Content analysis details:   (2.3 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 1.7 DEAR_SOMETHING         BODY: Contains 'Dear (something)'
X-Headers-End: 1vVCx9-0006a3-Hz
Subject: [V9fs-developer] --- PROPOSAL FOR KUWAIT OIL COMPANY EOI 2025/26 -
 - : - - EOI PROPOSAL - Invitation to Tender (ITT) or Request for Quotation
 (RFQ) - KOC - NO::KW12127 ---
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: "Kuwait Oil Company Vendors Services Center \(K.O.C.\) via
 V9fs-developer" <v9fs-developer@lists.sourceforge.net>
Reply-To: "Kuwait Oil Company Vendors Services Center \(K.O.C.\)"
 <project@kocvendor-kw.com>
Cc: "Kuwait Oil Company Vendors Services Center \(K.O.C.\)"
 <info@speedemail12.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear Sir/Madam,

I trust this message finds you well!

We are thrilled to reach out on behalf of the Kuwait Oil Company (K.O.C.) to present a compelling opportunity for collaboration. Your organization is ideally positioned to join us in our strategic initiatives that will not only enhance our operations but also significantly expand our capabilities. Together, we can achieve remarkable advancements in our industries.

This invitation highlights our strong commitment to growth and excellence within the oil and gas, shipping, maritime, logistics, and haulage sectors. We are actively seeking dedicated Vendors, Contractors, Suppliers, and partners who share our ambitious vision for the future. Please note that the enrollment period for projects planned for 2025/2026 will close in just 18 days, so we encourage you to act swiftly.

We invite all interested Contractors and Vendors whether new or existing partners in our supply chain to express their interest in receiving the Invitation to Tender (ITT) or Request for Quotation (RFQ). To effectively assess your organization's capabilities, we request detailed information on how you can manage these exciting projects.

We believe that partnering with you will lead to exceptional outcomes. We anticipate your prompt response regarding your interest in receiving the Expressions of Interest (EOI) and Vendor registration questionnaires for the upcoming E-Tender.

Your involvement is crucial to our shared success in delivering innovative solutions.

Thank you for considering this invitation. We look forward to your response with great enthusiasm!


________________________

Kind Regards,

Umar Ibn Abd Al-Aziz Mamudila,

Kuwait Oil Company (K.O.C.) Vendors - Contracts
Shared Services Center
Address: P.O. Box 9758 Ahmadi
61008 Ahmadi, Kuwait
Website: https://www.kockw.com


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

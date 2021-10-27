Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB23E43CDA1
	for <lists+v9fs-developer@lfdr.de>; Wed, 27 Oct 2021 17:34:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mfkwM-00008J-9t; Wed, 27 Oct 2021 15:34:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tms@cmcglobal.com.vn>) id 1mfkwJ-000088-7r
 for v9fs-developer@lists.sourceforge.net; Wed, 27 Oct 2021 15:34:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QQ9agcjMvR3KPmlZ4VXe6z04nhqiJf+M6kS1LNYzYvY=; b=ReuYXCzU+Bl5YsxU7YUWiMcgXE
 m0P8ShKR+Rk1w+/9U6/TAQ5ulKEknJSoVl2u399Lx/5wDJBk9enKRxwZ8OddeQ7EUDb3dI9X/VjFb
 kkvS5qPZcEDZsxQkdQUOEvxxzpxjQTSGjBNQ+QHmClEIPrDhyQjrnMl/DGJ6l0pnBsTM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QQ9agcjMvR3KPmlZ4VXe6z04nhqiJf+M6kS1LNYzYvY=; b=d
 PnYkqggzK4kpsK+KGQVpikYwDR0AfaRDHB6q5Hk44uWxreFdlJ3crxyLd6gP1hkZ4/zl2oDFPcoBX
 YTot5SeP3SN8ukvEqgAGnsuL2lFIAWvBxNrW8i+h88rdnVEqIZiN/1jX4dd4ax9JtQwIHeKZCTU++
 VvNuRCGaampIXBDU=;
Received: from mail.cmcglobal.com.vn ([45.122.253.6])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mfkqS-0004Ro-Pd
 for v9fs-developer@lists.sourceforge.net; Wed, 27 Oct 2021 15:34:07 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.cmcglobal.com.vn (Postfix) with ESMTP id 667C49B4827E
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 27 Oct 2021 22:27:07 +0700 (+07)
Received: from mail.cmcglobal.com.vn ([127.0.0.1])
 by localhost (mail.cmcglobal.com.vn [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id MdbB5vivBfhz for <v9fs-developer@lists.sourceforge.net>;
 Wed, 27 Oct 2021 22:27:04 +0700 (+07)
Received: from localhost (localhost [127.0.0.1])
 by mail.cmcglobal.com.vn (Postfix) with ESMTP id 60E379B4887C
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 27 Oct 2021 22:27:04 +0700 (+07)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cmcglobal.com.vn 60E379B4887C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cmcglobal.com.vn;
 s=A6D1DD3C-DE43-11EA-9A35-5E0B1D080220; t=1635348424;
 bh=QQ9agcjMvR3KPmlZ4VXe6z04nhqiJf+M6kS1LNYzYvY=;
 h=Date:From:To:Mime-Version:Message-ID;
 b=ONY+kbPimji/qTrPB9jZ0LgPcaPFALmZ9aUwn9snRJvd+CkkQAYSeh7CyEzz9Ns/4
 BIpXxQqEPXy+7MZTxCkUVbBWfcXT2apDUrCvXeVvO7uENdevQAPC6c+kikN2ZauRu7
 YXxJDdmGEQPQQfHZqFAgIw1BPH6G+QXmfQa5TR1b2PnQ26aPzmaju9Jz/V5dGoE9e0
 2hFhShhPL46VqYZYFrKnCTWoTU29FTwmSrkjXVrTtzAxRaHV6CQUbCC8ck4FvW0Ouf
 vwcjWsQdzDRWc9q3xy0VAnPZWAjn/vqL25SDyl2B0mz0v+g7357FFFnl9nSchAW6Fk
 q8t9v+FnZnfSQ==
X-Virus-Scanned: amavisd-new at cmcglobal.com.vn
Received: from mail.cmcglobal.com.vn ([127.0.0.1])
 by localhost (mail.cmcglobal.com.vn [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Wur97hc1w8G8 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 27 Oct 2021 22:27:04 +0700 (+07)
Received: from ijgmpdu (unknown [122.5.65.124])
 by mail.cmcglobal.com.vn (Postfix) with ESMTPSA id C36469B01C74
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 27 Oct 2021 22:27:03 +0700 (+07)
Date: Wed, 27 Oct 2021 23:27:30 +0800
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7, 0, 1, 91[cn]
Mime-Version: 1.0
Message-ID: <202110272327444624435@cmcglobal.com.vn>
X-Headers-End: 1mfkqS-0004Ro-Pd
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?6K+35rOo5oSP77yB5YWs5Y+457u05oqk6YCa?=
 =?utf-8?b?55+l?=
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
From: bqe via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: bqe <tms@cmcglobal.com.vn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ICAgICAgICAgICAgICAgICAgICAgIA0K55So5oi3djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0IA0K57u05oqk5Y6f5Zug5o+Q5Y2H6YKu5Lu25a6J5YWo5L2/55So57qn5YirLOmC
rueuseWuuemHj+S4jeWkn+S9v+eUqCznmbvlvZXpgq7nrrHlrZjlnKjljaHpob8s5Y+R5L+h6YCf
6YCS5q+U6L6D5oWi44CCDQoNCuazqOaEj+S6i+mhueivt+aUtuWIsOatpOmCruS7tueahOS6uuWR
mOeri+WNs+WNh+e6pyzku6XlhY3lvbHlk43kvaDnmoTmraPluLjkvb/nlKgs5oiW6YeN6KaB5paH
5Lu25Lii5aSxLOiLpeS4jei/m+ihjOWNh+e6p+ezu+e7n+WwhuiHquWKqOWIoOmZpOivpeeUqOaI
t+S/oeaBryzor7fnhp/mgonvvIENCuaTjeS9nOaMh+ekug0K6K+354K56L+Z6YeM6L+b6KGM5Y2H
57qnDQoNCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpW
OWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMt
ZGV2ZWxvcGVyCg==

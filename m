Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A11B91F0DD
	for <lists+v9fs-developer@lfdr.de>; Tue,  2 Jul 2024 10:16:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sOYgC-00062m-47;
	Tue, 02 Jul 2024 08:16:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <maxwell.atlee@crafticoz.com>) id 1sOYg8-00062c-Dg
 for v9fs-developer@lists.sourceforge.net;
 Tue, 02 Jul 2024 08:15:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+KBC+IlCs74FS7lpf6gXFaYgRzZpu9s8b33ll4Bwr7w=; b=HOLQQ0SnwE/GabsbLL4eeLjjHG
 WgSGUh6od99cTrhtVsVSSGbRlwUs8MAMXlLAyQjqo8fQkE0cyf7PHZAVYRJrLNl16W92KaMEv5jyq
 tJLm5Qrj/xZNBGd/24pPaDJNr+aEaDe7w/GksXVlIk1m/ZyzAtQ9RUAT+xjtNrhmkedI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+KBC+IlCs74FS7lpf6gXFaYgRzZpu9s8b33ll4Bwr7w=; b=U
 xHM7pLb7G6t+SCpN/HJfVypTs3tOUpyG+W9n0u/C6oIW4ESV9I8TMg5HPJ+b4QkENXRDCa6IqsCex
 1bNBaKSPF2mkJjLrJ5lJ/pT1uqxMi9+98lJoPJx6nNaQdn0JhUILQY8f36yC0ORvKGdt7nXztsdpa
 R3GbzbCn1qbIr+FE=;
Received: from mail.crafticoz.com ([217.61.16.185])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sOYg8-0007jL-8p for v9fs-developer@lists.sourceforge.net;
 Tue, 02 Jul 2024 08:15:56 +0000
Received: by mail.crafticoz.com (Postfix, from userid 1002)
 id DBBCD82DA1; Tue,  2 Jul 2024 10:15:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=crafticoz.com;
 s=mail; t=1719908148;
 bh=+KBC+IlCs74FS7lpf6gXFaYgRzZpu9s8b33ll4Bwr7w=;
 h=Date:From:To:Subject:From;
 b=BmRio8TSyfKPLIi85omviXvq/ga/Ari7YZ+NsMiluGdmMCW8ZDNp23HPdHxPEuGaa
 AKYbaNb5HCzjWxZW/tYOIQK5mrKxKy1j3u6TgIBy+BwHzU9cDp3Eq0oIKPVVlR91kD
 AUCK0R7HDwYkuG2+uNMuCnxNIoheeTIt93/531kxkABJom75LgMjBvvdYc4eTaX1AL
 2P3pVjxCReENrQGIH6Uyf6WFz5lftg0sXqlHeoQqkatOjXjVBlVwp+8NQguq5UBkSY
 Zr28+uNBEbu8iaUwd3XbMudin/TvlNwQXnSWMwQT7MMbzRvV6xNjM3axT3RlzbT1w+
 Re0r2VesB2zwA==
Received: by mail.crafticoz.com for <v9fs-developer@lists.sourceforge.net>;
 Tue,  2 Jul 2024 08:15:18 GMT
Message-ID: <20240702084500-0.1.3j.e8ia.0.eu121kqoch@crafticoz.com>
Date: Tue,  2 Jul 2024 08:15:18 GMT
To: <v9fs-developer@lists.sourceforge.net>
X-Mailer: mail.crafticoz.com
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Good morning, As an industry leader, we offer freeze-dried
 fruits and vegetables in various fractions, available in both organic and
 conventional versions. We mix and package our products, providing ready-to-use
 solutions for production purposes. 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: crafticoz.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.61.16.185 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [217.61.16.185 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [217.61.16.185 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1sOYg8-0007jL-8p
Subject: [V9fs-developer] Cooperation with a Polish producer
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
From: Maxwell Atlee via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Maxwell Atlee <maxwell.atlee@crafticoz.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Good morning,

As an industry leader, we offer freeze-dried fruits and vegetables in various fractions, available in both organic and conventional versions.

We mix and package our products, providing ready-to-use solutions for production purposes.

Our products are exceptionally durable, while retaining full flavor, nutritional value, and natural colors.

We provide support in developing a concept and transforming it into a real product.
I am happy to answer any questions regarding our offer. Please feel free to contact me.


Best regards
Maxwell Atlee


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

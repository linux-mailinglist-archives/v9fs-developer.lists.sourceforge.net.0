Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A46DF3A0D4
	for <lists+v9fs-developer@lfdr.de>; Sat,  8 Jun 2019 19:03:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hZekB-00031q-0g; Sat, 08 Jun 2019 17:03:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <infos@roulement.site>) id 1hZek9-00031Z-3p
 for v9fs-developer@lists.sourceforge.net; Sat, 08 Jun 2019 17:03:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:From:To:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PUDatyiGFF4Y2CsTgrU9V45/dGUkbIkIMp4sDDDbN+A=; b=kL77oqTsgfs3qLVUxd5mLnegFj
 j3PkL8vzefXBX1Wjh7KhdfVVH+wAFsMHbkK9GBIR7UFfph1pnfhUiW62vqYUeRkh4143JoTCqZnIk
 gITdA7jKNh/b3mp0zqi/Uffwohv+vfHe7J42XqdnGPjOnlVGpY3ONIlcMvL05SYBNt44=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:
 From:To:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=PUDatyiGFF4Y2CsTgrU9V45/dGUkbIkIMp4sDDDbN+A=; b=P
 uN0IiG9GVt3oUctLWMaZMMCba50wZkPqZnNA5WHDVB/90znXcj5OlUAwSphvrgk3VVbliGLeEWgE5
 CSpiTqmKPcPZ4qf87WpSYbU+6Jvz6DcnF5NQ+o1+MO6Ze1P3QAcgMqVGHMhYHL/4PJYw9jrecmBij
 fqTlIouNkq6U67Kc=;
Received: from smtp5-g21.free.fr ([212.27.42.5])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hZek4-002U98-7s
 for v9fs-developer@lists.sourceforge.net; Sat, 08 Jun 2019 17:03:01 +0000
Received: from clanique (unknown [37.169.173.218])
 by smtp5-g21.free.fr (Postfix) with ESMTP id F31365FF7A
 for <v9fs-developer@lists.sourceforge.net>;
 Sat,  8 Jun 2019 19:02:48 +0200 (CEST)
Date: Sat, 8 Jun 2019 19:02:38 +0200
To: v9fs-developer@lists.sourceforge.net
From: Accountancy services <infos@roulement.site>
Message-ID: <95b55398f5de69f8cd6ccf048dfb1555@clanique>
X-Priority: 3
X-Mailer: atravers
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha1; q=dns/txt; l=9936; s=default;
 t=1560013358; c=relaxed/simple; h=From:To:Subject;
 d=roulement.site; i=infos@roulement.site;
 z=From:=20Accountancy=20services=20<infos@roulement.site>
 |To:=20v9fs-developer@lists.sourceforge.net
 |Subject:=20Get=20unlimited=20services;
 bh=Wnl8K4s/EC1BpODMa00GYtPMTTg=;
 b=GdLRTTFBO52MqBqe5XK8GGfxlNtpccnNOoHSvGF+NjE9uPFJ6Xa0fad/aN73VXEgVz4xSC+ufWCqaM/8UbapbLw4xY4E8SsZ1AaWU9M6M2+8R66AgAwJqxDHqGHaz0ylDhugptULualaNITeQpfsRDV1Gv/3IaoN6OP74ZflAJo=
X-Spam-Score: 3.3 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [212.27.42.5 listed in list.dnswl.org]
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.27.42.5 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_HTML_MOSTLY       BODY: Multipart message mostly text/html MIME
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.7 MPART_ALT_DIFF         BODY: HTML and text parts are different
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.5 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 1.5 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
 0.0 T_REMOTE_IMAGE         Message contains an external image
 0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hZek4-002U98-7s
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Get unlimited services
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

accountancy


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

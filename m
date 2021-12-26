Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CC347F601
	for <lists+v9fs-developer@lfdr.de>; Sun, 26 Dec 2021 10:29:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n1Pqb-0000Wi-5l; Sun, 26 Dec 2021 09:29:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ele.mon@jllresort.com>) id 1n1PqZ-0000WO-VV
 for v9fs-developer@lists.sourceforge.net; Sun, 26 Dec 2021 09:29:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=afKkE6ACxT64KZxwlGnVvkyd/4oFzxyG6LvFkQAp9tE=; b=KhUWYKz+O6k4pMOEpmipB2PT0l
 lEU/XBpfwl5dNiU4ao7qeTxaGznJdOpgYZa+MAxH7vTlJ3sha0+efHfM3fOHHbBKhda3N4IWk+RqV
 NnJEnpRZkIxkIyobuFuQpp4q6kJI+nLgBNrUIsB584BAWwGTXvmwTrSuN1BSeM5l9tgc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=afKkE6ACxT64KZxwlGnVvkyd/4oFzxyG6LvFkQAp9tE=; b=l
 6cLd8bNEJtngtcw83/2Shx8oezlRjKIp8G7gQudEspJKrj4VW5S19HBzLuTLiEXjVc9Z5DV6ybQud
 zOsE6+S5Mu8LNQ4HExtCDsyUt2SDFPxITXCK15J3e1PVGUlu7OMZeWyUrUv/bhYiKP4bqZl+ziXrI
 TSwzoLPmHwXclvpg=;
Received: from [62.197.136.5] (helo=slot0.jllresort.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n1PqS-009id5-Ec
 for v9fs-developer@lists.sourceforge.net; Sun, 26 Dec 2021 09:29:44 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=jllresort.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=ele.mon@jllresort.com; bh=XswSRw0KqjsMmsAsEFzjHWmnS6I=;
 b=XFowEDgAzuBqVsSjLFu7WJqcikX7CLjGwK+tngKmxubF0fmgvOariGypa1d01ry6nKhKHx+yAta2
 k8haslFakVYzwDDA5RJsgvBKiIhMPvIyhKgGxby2dtLgdwszdsmw/fTDprLhVftqPjP7t7H+rtO4
 WIih+BEh7d86BE0s7x53ER0QNvzfsNyW+WT21Fqc8CvDwWWV+Dke7HbOwWrTc8qEGd1vQz4XKbU1
 6rv25Cs9uZaHhaE75igwGfTt0KBRLRJA7o5C4xGg61ILxrgttqI77HiVsc3uTLXP5JUBI1d950zw
 Ak5O3OZ5Eg328hiGBzCmWvOVZcJnvhk0AQ6/+w==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=jllresort.com;
 b=YP2XoNidQaesqQxqVSaBretZ5mxtXA5+nwb0TzoJJ4uwJu3BHEGWqmLaYWelWK+lejwNJoGbJ1wu
 oU8/AUQidwnGAo62D7OpmufhIAO6qPtHAR9sp62nMIUYjbTwvk6+kAXFY7C7VAZmRQC7MB8lN0jF
 2V+W+xw9A9299u+c26ZbCvymsZ+wfh9ZFuhOMrPCUJ2GmBUnaepzMdDBEIC3UEQAfdlcKrD42cVx
 Ibh4W0Rj30Rio+c+gHQ+6jsrqLQTg2zWvGppz+hll/ayw06zyHlfOtQf7u9hWcAWOCZdfrBirHKS
 28XvOpmOE2byIYZdhEQceZqjgjdqr02WSW6+wQ==;
From: ele.mon@jllresort.com
To: v9fs-developer@lists.sourceforge.net
Date: 26 Dec 2021 10:29:24 +0100
Message-ID: <20211226102855.5AB838C5BD4F5D7B@jllresort.com>
MIME-Version: 1.0
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Greetings to you v9fs-developer, I was wondering if you got
 my previous email? I have been trying to reach you by email
 v9fs-developer@lists.sourceforge.net, 
 kindly get back to me swiftly, it is very important and urgent. 
 Content analysis details:   (1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [62.197.136.5 listed in dnsbl-1.uceprotect.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [62.197.136.5 listed in bl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Headers-End: 1n1PqS-009id5-Ec
Subject: [V9fs-developer] Happy Weekend:
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
Reply-To: mustafa.ayvaz@ayvazburosu.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Greetings to you v9fs-developer,

I was wondering if you got my previous email? I have been trying 
to reach you by email v9fs-developer@lists.sourceforge.net, 
kindly get back to me swiftly, it is very important and urgent.

Thanks
Mustafa Ayvaz
Email: mustafa.ayvaz@ayvazburosu.com


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

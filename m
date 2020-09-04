Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 190E225CF2A
	for <lists+v9fs-developer@lfdr.de>; Fri,  4 Sep 2020 03:56:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kE0xj-0003uy-RY; Fri, 04 Sep 2020 01:56:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tdchjslrth@hotmail.com>) id 1kE0xi-0003uh-HL
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Sep 2020 01:56:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Content-Transfer-Encoding:Content-Type:To:
 Subject:From:Sender:Reply-To:Message-ID:Cc:MIME-Version:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e2kH6o8LUniVuk7leQl5IJsqFmFYh8JRUeNXB4ltuTs=; b=HwU4nN0fbyvjCCeKWbI4Rhkiuj
 keK/ryl8X0+oZMX2zlurF3t7glzDuoTQz8dsvvqVapiMGEzrS7waKxAX/OBwpONyqrQX6hb845nhV
 w4GPv6Ob6fOBfbUo2FASdYDH03hd0Q+hgs9S0XTJC3LSdABJtoc9lAXyrB/FaV5d80hw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Content-Transfer-Encoding:Content-Type:To:Subject:From:Sender:
 Reply-To:Message-ID:Cc:MIME-Version:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e2kH6o8LUniVuk7leQl5IJsqFmFYh8JRUeNXB4ltuTs=; b=dMHMFfKyxmDSg8tsdwP4ZCwP4V
 N0bzQteeYTFXfbz16KRs3fc4a0p9aSKMFScU7DDfUuOCkHij+MGYCDkXJYEhEsQcU0PJ56cNrDKlJ
 stvNRLgu/VgY7EHwfdcfFknwsWrFTQKeNRuIIG14TfCRJUfmpXqE2Atk1IdgCaJzElZA=;
Received: from [223.199.17.240] (helo=hotmail.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1kE0xW-00C4s9-E4
 for v9fs-developer@lists.sourceforge.net; Fri, 04 Sep 2020 01:56:22 +0000
From: tdchjslrth@hotmail.com
To: v9fs-developer@lists.sourceforge.net
Date: Fri, 4 Sep 2020 09:56:07 +0800
X-Priority: 3
X-Mailer: Foxmail 4.1 [cn]
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tdchjslrth[at]hotmail.com)
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [223.199.17.240 listed in bl.score.senderscore.com]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 1.0 MISSING_MID            Missing Message-Id: header
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.0 TVD_SPACE_ENCODED      Space ratio & encoded subject
 0.0 SPOOFED_FREEMAIL_NO_RDNS From SPOOFED_FREEMAIL and no rDNS
 1.3 SPOOFED_FREEMAIL       No description available.
 0.4 TVD_SPACE_RATIO_MINFP  Space ratio
X-Headers-End: 1kE0xW-00C4s9-E4
Subject: [V9fs-developer] =?gb2312?b?t6LGsbT6v6oxMzU2NDk5OTg3MsDu?=
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
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1kE0xj-0003uy-RY@sfs-ml-1.v29.lw.sourceforge.com>

CrT6v6rU9ta1y7C3osaxoaK827jxyrW73aOsu7bTrcC0tefXydGvLcS+19OjumwzNTY0OTk5ODcy
o6h2zqLNrLK9o6kKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L3Y5ZnMtZGV2ZWxvcGVyCg==

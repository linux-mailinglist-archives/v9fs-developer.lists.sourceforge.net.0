Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA6F339965
	for <lists+v9fs-developer@lfdr.de>; Fri, 12 Mar 2021 23:00:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lKppc-0005Je-L9; Fri, 12 Mar 2021 22:00:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <damgadman1@modulecraft.org>) id 1lKppb-0005JO-5A
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Mar 2021 22:00:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TuExgyL9QisBrvjdW7QbWvefwO1sKGM1zcTpql25Bgk=; b=OF8KBXQr0Fz3vVzyWKEkKbRE85
 nw/WU46DhbNISpiKSJuQenHqgMuejgehkxhyDsqyfX2q8Woh+/yHHmWb9IaZC95aCUL6UzSTU3PMl
 E7+10AeY6MosqKbOvGA4NVLPiJX8IrJVtlHV59yIS0TOVAwklUlxjfhcm3YiBITF0Kms=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Reply-To:
 From:Date:Subject:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TuExgyL9QisBrvjdW7QbWvefwO1sKGM1zcTpql25Bgk=; b=T
 lzMWB1kZZ1SVMvAPds1dZsTBYav4V85VmFj7Nq1m05bJrvobKxopK0CX7DqvbMlMJzlwW9E0ZDZIy
 9yHYcdzMQweW2pjSLIx2EHjYQVcY2fnBc2fXKrHEbmEa4ZQL9xKbNQO9/D0UbCRh+KFv9pylpeEpS
 9PTL59BpwpDtGGC8=;
Received: from server.techowdy.com ([167.86.102.190])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lKpoy-007GOl-F3
 for v9fs-developer@lists.sourceforge.net; Fri, 12 Mar 2021 22:00:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=aegiss.co.uk; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TuExgyL9QisBrvjdW7QbWvefwO1sKGM1zcTpql25Bgk=; b=Uvb9TFyjdmtqSkOnQ4J0C+CQGS
 ME9SGyzvzQ3aFcovo3MP6Ery6UtU/ha4k7Uw7qBIpfaRlE0QurKex19FnDuuQdqO79BdJ8SzVEU+8
 p7adqjIesFvohlbj5PjbXkMsQleHZpPL/QkN2OEDW6KaCXorZlGgtScc47sfKsKcJ9YKpnDHhfHq0
 7+uPlC/FMl9biqq0MuY26IVEPUukT4h/dhdyRWgP6z/id9kCHhINsSe8chN1EzU/up2/cfxdh0HRY
 l5nDpm3ZH4/q0vYJ9sw2QNk4HnLY+KPkQTw59EpDuTZUIzvk2lmpOBJU/17gbeXJ/yZ9HZ43Cauqo
 Zmk5rd4A==;
Received: from aegissco by server.techowdy.com with local (Exim 4.94)
 (envelope-from <damgadman1@modulecraft.org>) id 1lIzF5-0004Rq-FP
 for v9fs-developer@lists.sourceforge.net; Sun, 07 Mar 2021 20:39:07 +0100
To: v9fs-developer@lists.sourceforge.net
X-PHP-Script: aegiss.co.uk/wp-content/lf.php for 82.165.118.204
X-PHP-Originating-Script: 1020:lf.php
Date: Sun, 7 Mar 2021 19:39:07 +0000
From: Qi Zhu <damgadman1@modulecraft.org>
Message-ID: <ba3f111b2e601b1f564be54aa2743b93@aegiss.co.uk>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.techowdy.com
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [1020 992] / [47 12]
X-AntiAbuse: Sender Address Domain - modulecraft.org
X-Get-Message-Sender-Via: server.techowdy.com: authenticated_id: aegissco/only
 user confirmed/virtual account not confirmed
X-Authenticated-Sender: server.techowdy.com: aegissco
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: 7.3 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 2.1 DATE_IN_PAST_96_XX     Date: is 96 hours or more before Received: date
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (qizhu088[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
 [167.86.102.190 listed in bl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 2.5 PHP_SCRIPT             Sent by PHP script
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 PHP_ORIG_SCRIPT        Sent by bot & other signs
X-Headers-End: 1lKpoy-007GOl-F3
Subject: [V9fs-developer] Eigentum
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
Reply-To: qizhu088@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

U2Now7ZuZSBHcsO8w59lLAoKU2llIGhhYmVuIEltbW9iaWxpZW4gYmVpIHVucy4gQW50d29ydGVu
IFNpZSBhdWYgQWt6ZXB0YW56CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 761B9644C8F
	for <lists+v9fs-developer@lfdr.de>; Tue,  6 Dec 2022 20:33:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p2dhN-00039o-34;
	Tue, 06 Dec 2022 19:33:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <accounts1@shinzuyo.jp>) id 1p2dhM-00039i-45
 for v9fs-developer@lists.sourceforge.net;
 Tue, 06 Dec 2022 19:33:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5UWyBnmkcg+M633TwgZsZwOK40g0VGXBYLHRSs4viWk=; b=XtqIFFF4ekZ29k8j9lJNyg7S4V
 gdkG9FWZOyEbyGBmf9+egYJjLeWbgLd7pN5/Uz5VjMbw/nFIqYLiXn1JcI/d9yF6m7i4hJABTxDx0
 2zkWzjnwCxbwnLh0srJEMTZqJ3YlVn8a5k+gkRwiv0k4hor1OImthyx+u/HWVC+fQABc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5UWyBnmkcg+M633TwgZsZwOK40g0VGXBYLHRSs4viWk=; b=Z
 lmXKZMqlNwkfwOABNgJf8Do1YUih6Tz4YOfRiHkUh2dO9P9JND7UuPOMZg9Onb7uw1u+rdqcbe+7c
 7VdYEMSygh7CU6fiqGiCoxu/wFeYUhLWtU+v6zV+5+QK8XhqjkPt4h1Q7X24W0K3RFT6l14lfsWaB
 4gLGWxNHS8YpVQEQ=;
Received: from mm66.poltra.pl ([89.231.24.66] helo=mail2.poltra.pl)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p2dhL-008KyR-EX for v9fs-developer@lists.sourceforge.net;
 Tue, 06 Dec 2022 19:33:48 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail2.poltra.pl (Postfix) with ESMTP id 71ECE1DC607F
 for <v9fs-developer@lists.sourceforge.net>;
 Tue,  6 Dec 2022 20:15:49 +0100 (CET)
Received: from mail2.poltra.pl ([127.0.0.1])
 by localhost (mail2.poltra.pl [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id db6BLoq9zoog for <v9fs-developer@lists.sourceforge.net>;
 Tue,  6 Dec 2022 20:15:47 +0100 (CET)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail2.poltra.pl (Postfix) with ESMTP id 72CBE1DC669D
 for <v9fs-developer@lists.sourceforge.net>;
 Tue,  6 Dec 2022 20:15:47 +0100 (CET)
X-Virus-Scanned: amavisd-new at poltra.pl
Received: from mail2.poltra.pl ([127.0.0.1])
 by localhost (mail2.poltra.pl [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id IKqHmSwxga2d for <v9fs-developer@lists.sourceforge.net>;
 Tue,  6 Dec 2022 20:15:47 +0100 (CET)
Received: from shinzuyo.jp (ec2-54-211-86-81.compute-1.amazonaws.com
 [54.211.86.81])
 by mail2.poltra.pl (Postfix) with ESMTPSA id DC9221DC668D
 for <v9fs-developer@lists.sourceforge.net>;
 Tue,  6 Dec 2022 20:15:46 +0100 (CET)
From: SHINZUYO Metal Industry Limited <accounts1@shinzuyo.jp>
To: v9fs-developer@lists.sourceforge.net
Date: 06 Dec 2022 19:15:46 +0000
Message-ID: <20221206155302.3BCDEB39E855671B@shinzuyo.jp>
MIME-Version: 1.0
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear v9fs-developer Compliments of the season, our company
 needs a representative in the United States of America, will you be interested
 in being our rep. if yes, do return back so we can share more [...] 
 Content analysis details:   (1.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: shinzuyo.jp]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1p2dhL-008KyR-EX
Subject: [V9fs-developer] We have an Offer for a North American REP.
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
Reply-To: kent.yoshitaka@shinzuyo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear v9fs-developer
Compliments of the season, our company needs a representative in 
the United States of America, will you be interested in being our 
rep. if yes, do return back so we can share more details for your 
consideration.

All expenses shall be borne by us; therefore, you are not 
expected to contribute a dime while working with us. Also, all 
our transactions are absolutely legal.

Your reply shall be well acknowledged.

Kent Yoshitaka
Consultant
SHINZUYO Metal Industry Co., Ltd
(Trading as-Shintoyo Metal Industry Co)
Email: kent.yoshitaka@shinzuyo.com
www. shinzuyo.jp
Intepr. Email: grahamsbell2020@126.com
ADD: 1-5-8 Hirano, Kawanishi City, 
Hyogo Prefecture 666-0121 Japan



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

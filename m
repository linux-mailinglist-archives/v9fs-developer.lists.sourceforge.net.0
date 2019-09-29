Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 899C1C13D7
	for <lists+v9fs-developer@lfdr.de>; Sun, 29 Sep 2019 09:44:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iETsU-0008SY-MV; Sun, 29 Sep 2019 07:44:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <johnkenzie@jkenzie.com>) id 1iETsS-0008SO-Ms
 for v9fs-developer@lists.sourceforge.net; Sun, 29 Sep 2019 07:44:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HAGYyat/Ioipmif16/3mYPUNGDy2x2hUTWhmDt4NWfI=; b=RO5rWyVCjGwIrSys68nd2MDmKH
 Uhwir2rPfTctedTV+e48Zl6u3hXGT4uFYvDWBntcHTyE/69bQK/93a0/dr6baGx/hhfuxbYAutsnV
 7U8/U7+3WN+tden+E4ANwxAHLSDY1OiBzIn0qRk8Nt8AvPVg4gYFDUXeVneiir/i5AnI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HAGYyat/Ioipmif16/3mYPUNGDy2x2hUTWhmDt4NWfI=; b=f
 1vSm4FaEXFr/OTrKPD97JweYx7lZeppUw56xwdYEb79/Uck35SOf8Mj2RigqtpJTYOpQ/ctyOL12F
 SnMLDoq2Ekdx5Z2c3y8g0gAjKGQaW5Uk2Kj7zIkLyuaodBvm8ZkGDCUrJkP2tmuM0RnLur80tSFzG
 C9tzBW6jQ4Q6hKUQ=;
Received: from [134.175.243.164] (helo=mail.skwe.xyz)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1iETsR-00AIRN-C7
 for v9fs-developer@lists.sourceforge.net; Sun, 29 Sep 2019 07:44:20 +0000
Received: from jkenzie.com (unknown [103.125.191.239])
 by mail.skwe.xyz (Postfix) with ESMTP id 5E12CC421D
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 29 Sep 2019 13:25:53 +0800 (CST)
From: johnkenzie@jkenzie.com
To: v9fs-developer@lists.sourceforge.net
Date: 28 Sep 2019 22:25:54 -0700
Message-ID: <20190928222554.88769BECAAC157B4@jkenzie.com>
MIME-Version: 1.0
X-Spam-Score: 5.0 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.8 DKIM_ADSP_NXDOMAIN     No valid author signature and domain not in DNS
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (johnkenzie0011[at]outlook.com)
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iETsR-00AIRN-C7
Subject: [V9fs-developer] Partnership
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
Reply-To: johnkenzie0011@outlook.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Greetings,

My name is Engr John Kenzie of  Global Mining Company SL Limited 
in Botswana. I am in search of a (Foreign Transaction Manager) 
who will participant in our current Gold Sales Contracts between 
our Mining Company and Prospective Gold Buyers. Please kindly 
confirm to us if you are interested to participate in this Job 
Contract.

If you have any question don't hesitate to let me know.
Best Regards

John Kenzie
Global Mining Company SL Limited


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

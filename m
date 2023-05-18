Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CDE70808F
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 May 2023 13:59:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pzcI1-00058L-Ht;
	Thu, 18 May 2023 11:59:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <won@eurojackpot.net>) id 1pzcI0-000584-0x
 for v9fs-developer@lists.sourceforge.net;
 Thu, 18 May 2023 11:59:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tmO/WmegrUJ15ZA7uCcQznmU8xpeC8Sz7COsZSGAeTk=; b=jo+R716fULuzSI7hOvfVhj5KS9
 1Jq9TSMlB/Ji1Y9WSes1LnvjOVCn+YZHRpvBSF+BxzdKtf8tabqmqDZkdarqpOisLf9xAf2/W+cfo
 a08jSrrDSMVxnDSIYievUpDnvl6JOPDXnlWp4brsFmz6w7RuM7WvLamtgENQ2Pw3lErE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tmO/WmegrUJ15ZA7uCcQznmU8xpeC8Sz7COsZSGAeTk=; b=QlImTNw3tkIDEmhn8+z0x2gfSG
 2nn5FujN3FP3HVgRWk9qUkAw5mCq8ubrNn7m0QlHfKI9hJJuD39kHBSgKYs4EEL1dtAkr2iN5eSYK
 FCRFjJKkRh+W5rTGVzKx1OAu3UiSQZ982CW3aArotOLUWz3cybYfidt9TftMOXumV4gI=;
Received: from 167-179-142-54.a7b38e.mel.nbn.aussiebb.net ([167.179.142.54]
 helo=voilahome.com) by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pzcI0-0003Gc-7X for v9fs-developer@lists.sourceforge.net;
 Thu, 18 May 2023 11:59:24 +0000
Received: from [80.94.95.76] (unknown [80.94.95.76])
 by voilahome.com (Postfix) with ESMTPA id 7562E3C162F
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 18 May 2023 21:51:52 +1000 (AEST)
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
From: "Eurojackpo" <won@eurojackpot.net>
Date: Thu, 18 May 2023 04:51:51 -0700
X-Spam-Score: 7.8 (+++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This is a follow up to the letter mailed to your address
 announcing
 you the prizewinner of the for the 26th Eurojackpot draw in 2023 that took
 place on Friday 31st March at 21:00 CEST (20:00 GMT) were [...] 
 Content analysis details:   (7.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [jp5017097[at]gmail.com]
 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 2.6 RCVD_IN_SBL            RBL: Received via a relay in Spamhaus SBL
 [80.94.95.76 listed in zen.spamhaus.org]
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
 0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
 0.1 MISSING_MID            Missing Message-Id: header
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-Headers-End: 1pzcI0-0003Gc-7X
Subject: [V9fs-developer] You've won the Eurojackpot!
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
Reply-To: jp5017097@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1pzcI1-00058L-Ht@sfs-ml-1.v29.lw.sourceforge.com>

CgpUaGlzIGlzIGEgZm9sbG93IHVwIHRvIHRoZSBsZXR0ZXIgbWFpbGVkIHRvIHlvdXIgYWRkcmVz
cyBhbm5vdW5jaW5nIHlvdSB0aGUgcHJpemV3aW5uZXIgb2YgdGhlIGZvciB0aGUgMjZ0aCBFdXJv
amFja3BvdCBkcmF3IGluIDIwMjMgdGhhdCB0b29rIHBsYWNlIG9uIEZyaWRheSAzMXN0IE1hcmNo
IGF0IDIxOjAwIENFU1QgKDIwOjAwIEdNVCkgd2VyZToKCllvdSdyZSBlbGVjdHJvbmljIG1haWwg
d2l0aCBhc2NlbmRpbmcgbnVtYmVycyAxMCAxMSAzMSAzNyA0NCB3aXRoIGV1cm8gbnVtYmVycyA1
IDEyIGhhcyB3b24geW91IHRoZSBzdW0gb2Yg4oKsMTAsMDAwLDAwMCBpbiB0aGUgMjZ0aCBFdXJv
amFja3BvdCBkcmF3LgoKV2UgaGFkIGFuIG9mZmljaWFsIGxldHRlciBzZW50IHRvIHlvdSBidXQg
Z290IG5vIGZlZWRiYWNrLiBQbGVhc2UgY29uZmlybSByZWNlaXB0IG9mIHRoaXMgbm90aWZpY2F0
aW9uIGJ5IGNvbnRhY3RpbmcgY2xhaW0gZGlyZWN0b3IgTXIuIFBldGVyIEpvbmVzIGZvciBtb3Jl
IGRldGFpbHMuCgpLaW5kIHJlZ2FyZHMsCkN1c3RvbWVyIFN1cHBvcnQKRVVSTy1KQUNLUE9UCgpN
YXRlcmlhbCBDb3B5cmlnaHQgwqkgMjAyMyBFdXJvLWphY2twb3QubmV0LiBBbGwgcmlnaHRzIHJl
c2VydmVkLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlm
cy1kZXZlbG9wZXIK

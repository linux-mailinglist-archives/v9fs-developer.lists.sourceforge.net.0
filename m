Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8CBA37E37
	for <lists+v9fs-developer@lfdr.de>; Mon, 17 Feb 2025 10:17:04 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tjxFN-0002MJ-S4;
	Mon, 17 Feb 2025 09:17:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <vincenc.turek@commetrax.com>) id 1tjxFL-0002MD-Mp
 for v9fs-developer@lists.sourceforge.net;
 Mon, 17 Feb 2025 09:16:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s9FvBgec2vOLzZMd+I0JTxSJ2jvdHkBRar46owoDscI=; b=LkblXFsYsJOrDXAI+VLbDuywcv
 jBBXWtOVlnanmChDws2cw0Pai5QWlH1YdyLtITwDWIQwuVjmdgbefwefGVY+qFPvb8dX0QUE0jxLW
 zC5QvEXLPANgOLfe/ILqwZuTzqIFOTbIOXaq8pHT9HVpv5A6sbHyPgs7CUcu2BZNaaAM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=s9FvBgec2vOLzZMd+I0JTxSJ2jvdHkBRar46owoDscI=; b=R
 GwAfafXeWfCffNLN12QnG6ecpUAly09ncSS4sbVBeyLUnI8lBt4M5aFMXHmIIXVhJBZ0B1cDmnARk
 o0IcXBL8jYSOg/7bqEjYYqEzeRdO00XKAsixRLqKcTAGi5UuKStfbNvUxCPjsKzf5UuXuqSmSv7qi
 PMFfSM6+cO8TXd6k=;
Received: from mail.commetrax.com ([141.95.18.165])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tjxFK-0002xO-EZ for v9fs-developer@lists.sourceforge.net;
 Mon, 17 Feb 2025 09:16:59 +0000
Received: by mail.commetrax.com (Postfix, from userid 1002)
 id 547EF242FF; Mon, 17 Feb 2025 10:16:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=commetrax.com;
 s=mail; t=1739783807;
 bh=s9FvBgec2vOLzZMd+I0JTxSJ2jvdHkBRar46owoDscI=;
 h=Date:From:To:Subject:From;
 b=iRdlszgEnD39vEZ/WSM5Q9eF9FuepA2M21OmA6uPV9O6jBi7LH1jsRVraPU0j0JGo
 gAg2otwn+ssTgCEBodT0FMz4eKe7z0czzYzX6RyiyIwfi29X4ilcPfy5X0fXZR5V6w
 rmSLvSoBK0+uhsaxyj9x3vvhxoa9xyNUwaOYji8f6lr+4qteW0Dl9LH3nDle5XzKGK
 1n6jJdlzw9R+XntjGTtYfxLdYeYBZQXUJMmAWPcM11Gv2MywBpsesixJS2uTjCkCux
 1ltAFI8kWn/sU8rJ+g2wsL4FivdYKITIAGZ0wR4MKbI3eOcks4QHKbqjXqU1JU9dnU
 rwtWJ2s/zkqtw==
Received: by mail.commetrax.com for <v9fs-developer@lists.sourceforge.net>;
 Mon, 17 Feb 2025 09:16:04 GMT
Message-ID: <20250217084500-0.1.7w.k1iq.0.8lpygam9q8@commetrax.com>
Date: Mon, 17 Feb 2025 09:16:04 GMT
To: <v9fs-developer@lists.sourceforge.net>
X-Mailer: mail.commetrax.com
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, Are you looking for packaging that not only protects your
 product but also enhances its value in the eyes of your customers? We
 manufacture
 a wide range of bottles, caps, and buckets made of HDPE and PP, designed
 to meet the demands of industries such as cosmetics, chemicals, and food. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [141.95.18.165 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [141.95.18.165 listed in bl.score.senderscore.com]
X-Headers-End: 1tjxFK-0002xO-EZ
Subject: [V9fs-developer] Wide range of packaging
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
From: Vincenc Turek via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Vincenc Turek <vincenc.turek@commetrax.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGksCgpBcmUgeW91IGxvb2tpbmcgZm9yIHBhY2thZ2luZyB0aGF0IG5vdCBvbmx5IHByb3RlY3Rz
IHlvdXIgcHJvZHVjdCBidXQgYWxzbyBlbmhhbmNlcyBpdHMgdmFsdWUgaW4gdGhlIGV5ZXMgb2Yg
eW91ciBjdXN0b21lcnM/CgpXZSBtYW51ZmFjdHVyZSBhIHdpZGUgcmFuZ2Ugb2YgYm90dGxlcywg
Y2FwcywgYW5kIGJ1Y2tldHMgbWFkZSBvZiBIRFBFIGFuZCBQUCwgZGVzaWduZWQgdG8gbWVldCB0
aGUgZGVtYW5kcyBvZiBpbmR1c3RyaWVzIHN1Y2ggYXMgY29zbWV0aWNzLCBjaGVtaWNhbHMsIGFu
ZCBmb29kLgoKT3VyIHBhY2thZ2luZyBzdGFuZHMgb3V0IGZvciBpdHMgZHVyYWJpbGl0eSwgYWVz
dGhldGljIGFwcGVhcmFuY2UsIGFuZCB0aGUgYWJpbGl0eSB0byBjdXN0b21pemUgY29sb3JzIGFu
ZCBjbG9zdXJlcyDigJMgaGVscGluZyB0byBidWlsZCBicmFuZCByZWNvZ25pdGlvbiBhbmQgdHJ1
c3QuCgpBcmUgeW91IGludGVyZXN0ZWQgaW4gc29sdXRpb25zIHRoYXQgcGVyZmVjdGx5IGFsaWdu
IHdpdGggeW91ciBjb21wYW55J3MgbmVlZHM/CgoKQmVzdCByZWdhcmRzClZpbmNlbmMgVHVyZWsK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRl
dmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxv
cGVyCg==

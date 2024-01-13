Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6961982CA61
	for <lists+v9fs-developer@lfdr.de>; Sat, 13 Jan 2024 08:14:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rOYEA-0008Hc-Q7;
	Sat, 13 Jan 2024 07:14:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <Lisa=winhoo.azmanufacturer.com@bounces.winhoo.azmanufacturer.com>)
 id 1rOYE7-0008HG-Ks for v9fs-developer@lists.sourceforge.net;
 Sat, 13 Jan 2024 07:14:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:To:
 Sender:Reply-To:Message-Id:Subject:Date:From:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZHOhkgfKEErxIMQgPoErgWsrrKshDzRc4nGHNM7C7uM=; b=lIeCP+7R+7EXKou9sXn2q6nvv6
 F6vwGeejLXq4GXtBGOcxhE1M8Ktv2p0HGc5k2vhIQynfhcEqqoUgOSCO7jJxQmnirL96E5gyHtaCD
 bKXbGrMOGtHRes/ryndDjWFUEPO7NSJnci0nufA72iexYe38rTXxa704YiTM1q9ccp+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:To:Sender:Reply-To:Message-Id:
 Subject:Date:From:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=ZHOhkgfKEErxIMQgPoErgWsrrKshDzRc4nGHNM7C7uM=; b=H1lwcRT6qxBa
 U1SzfmextfXa3eEKk/MKmdHQTm0jd8rKZkawuOlI7S0aywRWMH45lINvgLjmYPCxQxDh5/pkMAqRZ
 MSPKR76E2RcqLwUv2mjRNlRKywsHQHGwJee1yOBwbfzG9x4iUm2SMV+pv7iR+L+J3M7Uifv9ioGo2
 iBcVg=;
Received: from winhoo.azmanufacturer.com ([67.227.85.207])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rOYE3-0002BH-2C for v9fs-developer@lists.sourceforge.net;
 Sat, 13 Jan 2024 07:14:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=winhoo.azmanufacturer.com; s=api;
 c=relaxed/simple; t=1705130060;
 h=from:date:subject:reply-to:to:list-unsubscribe;
 bh=ZHOhkgfKEErxIMQgPoErgWsrrKshDzRc4nGHNM7C7uM=;
 b=cQ5ZUEpqokPy5ceFc3gYdMZpxJ+u8b2v0ePICXYFYLi0S2HjAF+86CoU5eKtXtMC6XTwdWE+/Vd
 gpX+YJ9YsuTjzgC8J2qMQsUtu13jjrovjnMhu5Xu1DN4H94DRh/JDFG+yFjao38MAG7mYkxxHQN7b
 QxzERqVsG+eOhTFjGIo=
From: Lisa Yu <Lisa@winhoo.azmanufacturer.com>
Date: Sat, 13 Jan 2024 07:14:20 +0000
Message-Id: <4um0hmewu0lk.FVqaWXci6BRYhFRKJrdEgQ2@tracking.winhoo.azmanufacturer.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
X-Msg-EID: FVqaWXci6BRYhFRKJrdEgQ2
MIME-Version: 1.0
X-Spam-Score: 6.9 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello manager,   I hope you're doing well. I'm Lisa from
   Winhoo Precision, a leading exporter of CNC machining parts in China specializing
    in urgent CNC parts. We offer high precision, down to 0.005m [...] 
 
 Content analysis details:   (6.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: azmanufacturer.com]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: azmanufacturer.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [67.227.85.207 listed in list.dnswl.org]
  0.1 URIBL_SBL_A            Contains URL's A record listed in the Spamhaus SBL
                             blocklist
                             [URIs: tracking.winhoo.azmanufacturer.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.7 HTML_IMAGE_ONLY_28     BODY: HTML: images with 2400-2800 bytes of
                             words
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rOYE3-0002BH-2C
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] CNC machining parts manufacturer
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
Reply-To: Lisa Yu <lisa@cncprecision-parts.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGVsbG8gbWFuYWdlciwKwqAKSSBob3BlIHlvdSdyZSBkb2luZyB3ZWxsLgpJJ20gTGlzYSBmcm9t
IFdpbmhvbyBQcmVjaXNpb24sIGEgbGVhZGluZyBleHBvcnRlciBvZiBDTkMgbWFjaGluaW5nCnBh
cnRzIGluIENoaW5hIHNwZWNpYWxpemluZyBpbiB1cmdlbnQgQ05DIHBhcnRzLgpXZSBvZmZlciBo
aWdoIHByZWNpc2lvbiwgZG93biB0byAwLjAwNW1tLCBmb3IgdmFyaW91cyBpbmR1c3RyaWVzOgox
LiBEZWZlbnNlCjIuIEFlcm9zcGFjZSBBZ3JpY3VsdHVyYWwsCjMuIFRyYW5zcG9ydGF0aW9uLMKg
CjQuIE1lZGljYWwsCjUuIEluZHVzdHJpYWwKNi4gQWxsIGtpbmRzIG9mIFJvYm90cwo3LiBEcm9u
ZXPCoAo4LiBNb3RvcmJpa2UKOS4gTWlsaXRhcnkKQXQgV2luaG9vIFByZWNpc2lvbiwgd2Ugb3Bl
cmF0ZSA2MCBhZHZhbmNlZCBtYWNoaW5lcywgaW5jbHVkaW5nIDQtYXhpcwphbmQgNS1heGlzIENO
QyBtYWNoaW5lcy4gwqBXZSBleGNlbCBpbiBjcmFmdGluZyBoaWdoLXZhbHVlIGVuZ2luZWVyZWQK
cGFydHMgYW5kIGFzc2VtYmxpZXMgd2l0aCBpbnRyaWNhdGUgZGVzaWducyBhbmQgcmlnb3JvdXMg
cXVhbGl0eQpzdGFuZGFyZHMuIMKgT3VyIGNvbW1pdG1lbnQgdG8gcXVhbGl0eSwgY29zdC1lZmZl
Y3RpdmVuZXNzLCBhbmQKb24tdGltZSBkZWxpdmVyeSBpcyBhY2hpZXZlZCB0aHJvdWdoIGN1dHRp
bmctZWRnZSBDTkMgbWFjaGluaW5nCnRlY2hub2xvZ3ksIGEgcm9idXN0IEVSUCBzeXN0ZW0sIGVm
ZmljaWVudCBwcm9jZXNzZXMsIGFuZCBhIHNraWxsZWQKd29ya2ZvcmNlLgpBcyB5b3UgbWF5IGJl
IGF3YXJlLCBwcmVjaXNpb24gbWFjaGluZWQgcGFydHMgY2FuIGJlIHF1aXRlIGNvc3RseSBpbgp5
b3VyIGNvdW50cnkgYXQgdGhlIG1vbWVudC4gwqBJZiB5b3UgcHJvdmlkZSB1cyB3aXRoIHlvdXIg
ZHJhd2luZ3MsIHdlCmNhbiBzd2lmdGx5IG9mZmVyIHlvdSBjb21wZXRpdGl2ZSBwcmljaW5nLCB3
aXRoIHNhbXBsZSBkZWxpdmVyeQp0eXBpY2FsbHkgdGFraW5nIG9ubHkgNi0xMCBkYXlzLiDCoFdl
J3JlIGFsc28gZXF1aXBwZWQgdG8gaGFuZGxlCnVyZ2VudCBvcmRlcnMuClNob3VsZCB5b3UgaGF2
ZSBhbnkgcXVlc3Rpb25zIG9yIHJlcXVlc3RzLCBwbGVhc2UgZG9uJ3QgaGVzaXRhdGUgdG8KcmVh
Y2ggb3V0LiDCoFdlJ3JlIGRlZGljYXRlZCB0byBtZWV0aW5nIHlvdXIgbmVlZHMuCkJlc3QgcmVn
YXJkcywKTGlzYSB5dQpMaXNhQGNuY3ByZWNpc2lvbi1wYXJ0cy4gY24KV2luaG9vIFByZWNpc2lv
bgpVbnN1YnNjcmliZQpbL2h0dHA6Ly90cmFja2luZy53aW5ob28uYXptYW51ZmFjdHVyZXIuY29t
L3RyYWNraW5nL3Vuc3Vic2NyaWJlP2Q9amp3a0dKVUNkNF8tSFc4amNjQzB6THlOZlJacXkxZGJZ
cnk0VGxiYWppczR3LWtGa0ZHYzhLWVJNbnBuSmk4MXcwTXQ5V2FiYXVUaHR2ejhqMklzREs4VHhu
SXU1Rmp1Q3R3eTREYkFKX2NPREg1QjBISThHVXpJdnptQVF2cFYwdUVWanhlek9GQ29mN1RQVnVO
emVOYmNDUXdkU1ZCcTRfMldHTjRJbnRTQUJMZ1BpUEk2WUgwSmRVdF9XNHI2UmpwRFZQcjNHYzkz
Nmc0Y0FlWFRFYjd5T3o3aDNma0VDV3I1Q1EwNUtVT0I0NXdYN2RqQXlPeHhtT0JHemtQWmNZWWFs
T1pZeGxXWHhFczVROGF0MTlXQi12XzJwTEV4WlcxNm1JdWJJUmRNM2JBVFY4ckNBdGlQMEZscTZ3
RlJPMVFPVDFfRUhwczRhRXJlQnJ2NHpPU25JbGVBYVdldF9QT1JNQmxjS2JETkU3SXA4Zld2dTJD
M1ktZENXTWhmLWVsM05JTHV1R2xTR19zS3FSMjk0U3pqazhrYlM1OTVMeThQa1NyRTdnZFhIV2RT
dUxFejRPQk95YnJKU0RvOTBrN0NTN09CQ0c0LXFFTnBsakthbC1SdS1DLXpoLVluTm1sMGVraWlS
ZjhtM3p4Q1I0eS1INllEd0pFQktPTHA4dzJdCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVs
b3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK

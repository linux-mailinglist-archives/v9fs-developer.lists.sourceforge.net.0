Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F2404EFFDB
	for <lists+v9fs-developer@lfdr.de>; Sat,  2 Apr 2022 11:02:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1naZWZ-000537-Gt; Sat, 02 Apr 2022 09:02:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <infos@adomfu.fr>) id 1naZWX-000530-3B
 for v9fs-developer@lists.sourceforge.net; Sat, 02 Apr 2022 09:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :List-Unsubscribe:Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ns4/CMpO6hdQl4d4dr7QKqxDctFFsoz0esblxszYGYQ=; b=bjezO/eWet/ObeAhDdYFHhSZxc
 pR3R9dBIj7+5nFKnE9jgU/60W9GgwBr6gD2qfuonX+UTXYyTCqKPramO7O1bpa6FiMVYSZPhk1is5
 08CFPU3PNTf1AtXxs/J26DeFi/Lj4gVUjZyt9/NoQgVreXWvpfayZKUdo4D5YdX9QBy8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ns4/CMpO6hdQl4d4dr7QKqxDctFFsoz0esblxszYGYQ=; b=TK1VuDGRyMKJY6Dkk7I5jJNnsp
 LLR22BWf99mqUUunUI3LzB897R7I6M7F9q1avYn7d9oWYuUvOXNXp4/Ej80gC3zc0wLrxNiwBQyB7
 R3L9kPuDG8LkFuJLM43RJNwffecHyP90sPhXIAtnhwg8MxyGAkAxMJdtTsrSFWLAe6Ao=;
Received: from smtp.adomfu.fr ([62.210.144.185])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1naZeR-0001gN-Ap
 for v9fs-developer@lists.sourceforge.net; Sat, 02 Apr 2022 09:02:32 +0000
Date: Sat, 2 Apr 2022 11:02:23 +0200
Authentication-Results: smtp.adomfu.fr; dkim=pass (2048-bit key;
 unprotected) header.d=adomfu.fr header.i=infos@adomfu.fr header.b="hUdG7ddf"; 
 dkim-atps=neutral
To: v9fs-developer@lists.sourceforge.net
Message-ID: <1648890143.9aa7729ff9885e62d5a5e61f06e88a42@adomfu.fr>
X-Priority: 3
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha1; q=dns/txt; l=12062; s=mail;
 t=1648890143; c=relaxed/simple; h=From:To:Subject;
 d=adomfu.fr; i=infos@adomfu.fr; z=From:=20infos@adomfu.fr
 |To:=20v9fs-developer@lists.sourceforge.net
 |Subject:=20Check=20your=20eligibility;
 bh=YmvO7QSTJiyU7B2Jd1xff/+uqMk=;
 b=hUdG7ddf4sFl/0NZqsqWE4SwdtX4lhNSL0UtEt6M7EHVDxk8fRlCLcBJ0nbQNw0cpKzrl3v4lS9xo0gX60tZKdZ9o3xCjKc1fNigHXhS86HAVuZm7ElF31U3fTX/wUt9n9j93m393QoGm8vZ/nCrCRvVrFvwtqfizwbt6CEJFmOhEW3SlA3SrnvIwaVC+ADkypbXRnSU0q9RgdUD+oIqZcFf1WN6pLAOJLkVLqjBDdGmxLYYaFxfmLeF918qpEcXJqytpDkSzmrGMaVh4F8Dqtriz3Q68l6HT/7zX+8g0CjaJWxE0gPVNcHuBm/Z/U4nyi0ArRDOIauPTl0N746IVA==
X-Spam-Score: 1.8 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  R&amp;D TAX CREDITS The average R&amp;D Tax Credit claim paid
    out by the HMRC to businesses is £54k Check to see if you qualify if you&quot;ve
    been developing new goods, processes, systems, or accomp [...] 
 
 Content analysis details:   (1.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1naZeR-0001gN-Ap
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Check your eligibility
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
From: infos--- via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: infos@adomfu.fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgpSJmFtcDtEIFRBWCBDUkVESVRTClRoZSBhdmVyYWdlIFImYW1wO0QgVGF4IENyZWRpdApjbGFp
bSBwYWlkIG91dCBieSB0aGUgSE1SQwp0byBidXNpbmVzc2VzIGlzIMKjNTRrCkNoZWNrIHRvIHNl
ZSBpZiB5b3UgcXVhbGlmeSBpZiB5b3UmcXVvdDt2ZSBiZWVuIGRldmVsb3BpbmcgbmV3IGdvb2Rz
LCBwcm9jZXNzZXMsIHN5c3RlbXMsIG9yIGFjY29tcGxpc2hpbmcgYW55IHdvcmsgd2l0aCBhIGRl
Z3JlZSBvZiB1bmNlcnRhaW50eS4gVGhpcyB0YXggY3JlZGl0IGlzIGF2YWlsYWJsZSB0byBidXNp
bmVzc2VzIGluIGFueSBpbmR1c3RyeSwgYW5kIGl0IGlzIGN1cnJlbnRseSB0aGUgSE1SQyZxdW90
O3MgbW9zdCB1bmRlcnV0aWxpc2VkIHRheCBjcmVkaXQuCgpRdWFsaWZ5aW5nIHByb2plY3RzIHJh
bmdlIGZyb20gdGhlIGFkYXB0YXRpb24gb2YgdGVjaG5vbG9neSBmcm9tIG9uZSBpbmR1c3RyeSBm
b3IgdXNlIGluIGFuIGluZHVzdHJ5IGZvciB3aGljaCBpdCB3YXMgbm90IG1lYW50IHRvIG1hbnVm
YWN0dXJpbmcgZW5oYW5jZW1lbnRzIHRvIGNyZWF0ZSBhIGhpZ2hlciBxdWFsaXQgcHJvZHVjdCBm
YXN0ZXIuCgpXZSZxdW90O3ZlIGRldmVsb3BlZCBhIHRvb2wgdGhhdCBhbGxvd3MgeW91IHRvIHZl
cmlmeSBvbmxpbmUgaWYgeW91IHF1YWxpZnkgZm9yIFImYW1wO0QgVGF4IENyZWRpdHMgYmFzZWQg
b24gb3VyIDEyIHllYXJzIG9mIGV4cGVyaWVuY2UgaW4gdGhpcyBpbmR1c3RyeS4KCkNoZWNrIGlm
IHlvdSBRdWFsaWZ5CldoYXQgYXJlIFImYW1wO0QgdGF4IGNyZWRpdHM/ClJlc2VhcmNoIGFuZCBE
ZXZlbG9wbWVudCAoUiZhbXA7RCkgdGF4IGNyZWRpdHMgYXJlIGFuIGluY2VudGl2ZSB0byByZXdh
cmQgY29tcGFuaWVzIGVuZ2FnZWQgaW4gaW5ub3ZhdGlvbi4gQSBVSyB0YXggcmVsaWVmLCBSJmFt
cDtEIHRheCBjcmVkaXRzIGNhbiBwcm92aWRlIHZhbHVhYmxlIGZ1bmRpbmcgZm9yIGFueSBjb21w
YW55IHNwZW5kaW5nIG1vbmV5IG9uIGRldmVsb3BpbmcgbmV3IHByb2R1Y3RzIGFuZCBwcm9jZXNz
IG9yIGltcHJvdmluZyBleGlzdGluZyBvbmVzLiBUaGlzIHJlbGllZiBjYW4gZ2l2ZSB5b3VyIGJ1
c2luZXNzIHRoZSBvcHBvcnR1bml0eSB0byBjbGFpbSBiYWNrIGEgcHJvcG9ydGlvbiBvZiB5b3Vy
IFImYW1wO0QgZXhwZW5kaXR1cmUgYXMgdGF4IGNyZWRpdHMsIHdoaWNoIGNhbiByZWR1Y2UgeW91
ciB0YXggYmlsbCBvciBpbmNyZWFzZSB0YXhhYmxlIGxvc3Nlcy4gTm8gbWF0dGVyIHRoZSBzZWN0
b3IsIGlmIHlvdSZxdW90O3JlIHNwZW5kaW5nIG1vbmV5IG9uIHJlc2VhcmNoIGFuZCBkZXZlbG9w
bWVudCwgdGhlbiB5b3UgY291bGQgYmUgZWxpZ2libGUgdG8gY2xhaW0gUiZhbXA7RCB0YXggY3Jl
ZGl0cy4KCkNoZWNrIHlvdXIgZWxpZ2liaWxpdHkgZm9yClImYW1wO0QgdGF4IGNyZWRpdHMKRG8g
dGhlIGZvbGxvd2luZyBhcHBseSB0byB5b3VyIGJ1c2luZXNzPwoKQXJlIHlvdSBzcGVuZGluZyBt
b25leSBvbiBkZXZlbG9waW5nIG5ldyBwcm9jZXNzZXMsIHByb2R1Y3RzIG9yIHNlcnZpY2VzPwoK
V2VyZSB0aG9zZSBwcm9qZWN0cyBzdGFydGVkIGluIHRoZSBsYXN0IDItMyB5ZWFycz8KCkRvIHlv
dSBlbXBsb3kgc3RhZmYgYWNyb3NzIGEgdmFyaWV0eSBvZiByb2xlcyB3aG8gd29yayBvbiBwcm9q
ZWN0cyB0aGF0IGFkdmFuY2Uga25vd2xlZGdlLCBhbmQgY2xhcmlmeSB1bmNlcnRhaW50eT8KQWR2
aWNlCldlIGNhbiBoZWxwIGRldGVybWluZQoKaWYgeW91JnF1b3Q7cmUgZWxpZ2libGUgZm9yCgpS
JmFtcDtEIHRheCBjcmVkaXQKCkdldCBpbiB0b3VjaCB0b2RheSEKCgoKQ2hlY2sgaWYgeW91IFF1
YWxpZnkKCgoKVGhpcyBlLW1haWwgaXMgYnJvdWdodCB0byB5b3UgYnkgYW4gaW5kZXBlbmRlbnQg
ZS1tYWlsIG1hcmtldGluZyBjb21wYW55LgpGb2xsb3cgdGhpcyBsaW5rIHRvIHN0b3AgcmVjZWl2
aW5nIHRoZXNlIGUtbWFpbHMuCllvdSBoYXZlIHRoZSByaWdodCBvZiBhY2Nlc3MsIHJlY3RpZmlj
YXRpb24sIG9wcG9zaXRpb24gYW5kIGNvbnNlbnQsIHdoaWNoIHlvdSBoYXZlIGFjY2VzcyBvbiB0
aGlzIHdlYiBwYWdlOiBQcml2YWN5IHBvbGljeS4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1k
ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==

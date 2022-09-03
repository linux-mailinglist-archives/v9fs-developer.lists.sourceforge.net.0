Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C72D25AC1A6
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Sep 2022 00:58:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oUc5g-0001ot-Vc;
	Sat, 03 Sep 2022 22:58:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sales@neemails.com>) id 1oUc5e-0001on-6h
 for v9fs-developer@lists.sourceforge.net;
 Sat, 03 Sep 2022 22:58:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:To:
 Sender:Reply-To:Message-Id:Subject:Date:From:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7/53niLG21GcImHtf7AueoJa2bJJr1Jg66S+TMauXFo=; b=a3tVPHpsp+AmlfpKrEPIIKUHr0
 Vl+VeQMvc15DQ1cY4AhtR5fxGFzj5JBed7k8B6zmD9nNji++q9gMIVVYtwtYMjwjHEHTBVXrFivmj
 zQcepYTWbYUlwn0t9p0c/F6LnBwee2AP46O1vO7AJHMlHGdV4DSOyf0SZl311qIj/unA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:To:Sender:Reply-To:Message-Id:
 Subject:Date:From:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=7/53niLG21GcImHtf7AueoJa2bJJr1Jg66S+TMauXFo=; b=d2fxzRNl2+IT
 gYt75uZ62XYdTaFtLdT/ZhqDtbBbWLfxhZl2kCncMW3rrqsx6pLx+7ALuGVDpQVUntiD+hRKc+R2D
 pGwHz2l1o7MM1piXDd0ARxSFixF2MZcs1WYUMSXIfCHLdz+mDGVCdhqCFio7iYgMFhetuF8BiLZNf
 FGBiw=;
Received: from m80.mxout.mta4.net ([67.227.85.80])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oUc5Y-0004Et-DN for v9fs-developer@lists.sourceforge.net;
 Sat, 03 Sep 2022 22:58:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=neemails.com; s=api; c=relaxed/simple;
 t=1662245871; h=from:date:subject:reply-to:to:list-unsubscribe:mime-version;
 bh=7/53niLG21GcImHtf7AueoJa2bJJr1Jg66S+TMauXFo=;
 b=MUzAN4DA2fY6/lJOXIuLr2MJtR/hb+JzVdxdrSwgXC/uN3r9y13TAT+3BdjYA/dvknUrs/jfnRu
 1VvtfUMBeuCBXq0+z6JS9K5GS86i/6onZPgdsle1vgg94d7LPB0tMSLPAhbmZCA7TY0o/QM6kCXfO
 HXk5KrVhORGTdUhSpWo=
DKIM-Signature: v=1; a=rsa-sha256; d=elasticemail.com; s=api;
 c=relaxed/simple; t=1662245871;
 h=from:date:subject:reply-to:to:list-unsubscribe;
 bh=7/53niLG21GcImHtf7AueoJa2bJJr1Jg66S+TMauXFo=;
 b=lsXe+fMyqPdbPqYv0yd5XU8aIEC7Z3heq96/PU+Qg70XyCCTDco8PWlwtHnAvDhN2c4i7heVbO2
 CRgj0CtoDAULgmxdnc6jHI4Loqe+a9HEmGxeUEIzOifoJoewjcgmGePS6efh6LU0wlKP1vserVf5G
 73CcTD5ro530T7WZs0c=
From: Lily <sales@neemails.com>
Date: Sat, 03 Sep 2022 22:57:51 +0000
Message-Id: <4uhsh762y0hw.ggPGbztOz1GtmqVT3r0cJw2@tracking.neemails.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
X-Msg-EID: ggPGbztOz1GtmqVT3r0cJw2
MIME-Version: 1.0
X-Spam-Score: 2.5 (++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Friend, I'm Lily from Jindee Technology, Hope this email
    finds you well.  First of all, we wish you good health, and that the inconveniences
    of corona virus are staying away from you!  We are a p [...] 
 
 Content analysis details:   (2.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: elasticemail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [67.227.85.80 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [67.227.85.80 listed in list.dnswl.org]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.7 HTML_IMAGE_ONLY_28     BODY: HTML: images with 2400-2800 bytes of
                             words
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
X-Headers-End: 1oUc5Y-0004Et-DN
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] CNC precision metal parts processing and
 customization
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
Reply-To: Lily <sales@jindeecnc.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGkgRnJpZW5kLApJJ20gTGlseSBmcm9tIEppbmRlZSBUZWNobm9sb2d5LCBIb3BlIHRoaXMgZW1h
aWwgZmluZHMgeW91IHdlbGwuwqAKRmlyc3Qgb2YgYWxsLCB3ZSB3aXNoIHlvdSBnb29kIGhlYWx0
aCwgYW5kIHRoYXQgdGhlIGluY29udmVuaWVuY2VzIG9mCmNvcm9uYSB2aXJ1cyBhcmUgc3RheWlu
ZyBhd2F5IGZyb20geW91IcKgCldlIGFyZSBhIHByb2Zlc3Npb25hbCBDTkMgTWFjaGluaW5nIFBh
cnRzIHByb2Nlc3NpbmcgZmFjdG9yeSwgb3VyCnByb2R1Y3Rpb24gZXF1aXBtZW50IGluY2x1ZGVz
IENOQywgQ05DIHR1cm5pbmcsIGluamVjdGlvbiBtb2xkaW5nLApzdGFtcGluZywgc2hlZXQgbWV0
YWwsIGRpZSBjYXN0aW5nLCBldGMuwqBBdCB0aGUgc2FtZSB0aW1lLCBvdXIKY29tcGFueSBoYXMg
YSBmdWxsIHN1aXRlIG9mIFFDIGVxdWlwbWVudCByYW5naW5nIGZyb20gQ01NIHRvIFZpc2lvbgpT
Y29wZS7CoApEb21lc3RpY2FsbHksIHdlIG1haW5seSBzZXJ2ZSBGb3hjb25uIGFuZCBpbiAyMDE0
LCB3ZSBoYXZlIHN0YXJ0ZWQgdG8KZXhwb3J0IHRvIGFyZWFzIHN1Y2ggYXMgRXVyb3BlLCBBbWVy
aWNhLCBKYXBhbiBhbmQgQXVzdHJhbGlhLiBPdXIKY29tcGFueSBpcyBJU085MDAxIGNlcnRpZmll
ZCwgb3VyIG1hbmFnZW1lbnQgdGVhbSB0IGlzIG9mIGhpZ2gKZWZmZWN0aXZlbmVzcywgdGhlIHRl
YW0gaXMgY2FwYWJsZSBhbmQgd2UgaGF2ZSBpbnRyb2R1Y2VkIHRoZSBsZWFuCm1hbmFnZW1lbnQg
anVzdCBsYXN0IHllYXIuwqAKRHVlIHRvIENvdmlkLTE5LCBnZW9wb2xpdGljYWwgdGVuc2lvbnMg
YW5kIHdvcmxkd2lkZSBpbmZsYXRpb24sIHdlCmNvdWxkIGZlZWwgdGhlIHJlY2Vzc2lvbiBvZiB0
aGUgZWNvbm9teSBhbmQgdGhhdCBidXlpbmcgcG93ZXIsIHdoZXRoZXIKd2l0aGluIHRoZSBjb3Vu
dHJ5IG9yIG91dHNpZGUsIGhhcyBkZWNyZWFzZWQgc2lnbmlmaWNhbnRseS7CoApXZSBoZXJlYnkg
cHJvbWlzZSB0aGF0OsKgCjEuIEFzIGZvciB5b3VyIG9sZCBwcm9kdWN0cywgc2hvdWxkIHlvdSBo
YXZlIHRoZSBuZWVkIHRvIGluY3JlYXNlIHRoZQpxdWFsaXR5IG9yIHRoZSBuZWVkIHRvIHJlZHVj
ZSBjb3N0cywgcGxlYXNlIHNlbmQgdXMgdGhlIGRyYXdpbmdzIGFuZAp0YXJnZXQgcHJpY2UuIFdl
IHdpbGwgdHJ5IG91ciB2ZXJ5IGJlc3QgdG8gZnVsZmlsbCB5b3VyIHJlcXVlc3RzLsKgCjIuIEFz
IGZvciB5b3VyIG5ldyBwcm9kdWN0cywgcGxlYXNlIHNlbmQgdXMgdGhlIGRyYXdpbmdzLiBXZSB3
aWxsIGNvbWUKYmFjayB0byB5b3Ugd2l0aCBvdXIgcmVhc29uYWJsZSBxdW90YXRpb24gYW5kIHBy
b3ZpZGUgeW91IHdpdGgKc2FtcGxlcy7CoApXZSBob3BlIHRvIGdldCB5b3VyIGF0dGVudGlvbiBh
cyBvdXIgYnVzaW5lc3MgaGFzIGRlY2xpbmVkIGEgbG90IHRoaXMKeWVhciwgd2Ugd2lzaCB0aGF0
IHdlIGNhbiBhbGwgd29yayBoYW5kIGluIGhhbmcgdG9nZXRoZXIgdG93YXJkcwpzdWNjZXNzLsKg
CkZ1cnRoZXJtb3JlLCBJIGhvcGUgd2UgY2FuIGJlY29tZSBnb29kIGZyaWVuZHMgYW5kIGdyZWF0
IGNhcmVlcgpwYXJ0bmVycyHCoE1heSBJPwpMb29raW5nIGZvcndhcmQgdG8geW91ciBzcGVlZHkg
cmVzcG9uc2UgYW5kIHJlcGx5LMKgdGhhbmsgeW91IQpCZXN0IHJlZ2FyZHMsCkxpbHkKc2FsZXNA
amluZGVlY25jLiBjbgpKaW5kZWUgVGVjaG5vbG9neSBDby4sIEx0ZC4KVW5zdWJzY3JpYmUKWy9o
dHRwOi8vdHJhY2tpbmcubmVlbWFpbHMuY29tL3RyYWNraW5nL3Vuc3Vic2NyaWJlP2Q9eFZQVm5s
TlF0aFpzN3E1dG8wZ2p3Z2hVa0Rrck1JdTZad0VHVlhBaS1NZUVsZkF4blVqaVhXN1pKVXhBaS0t
SzNXOUd1X1FQeDBFdVJaMENCZ0hSM1BNLTIzRER5ak8tdzRwb1luQ29DX04tNEdZSF9hWXdJTGdi
MXBEMlZ2SFFCUm03QWRGeVhsUnByZDVTMXdGUE14ZC1kR3gtYWxUdG9ndE4tczFnVElkRGtDNE1P
am9mdFBJMDdJb0o2TVYzRUFLclNTQVJSNFVPeUozSE9nZlBRRjdFRG42T0dmQ255UXktTkotUFJN
V3h3R3FuV0p4cm5PdUFtQkxUU3NPWkF6YjBhaUh3eEFGZFFyekQxMWdUYW8tbXBRSDlYU2NEbWg3
WUdMck9DeTYxaHROelRRMldGckZFTzdYeTlpR1BzVXZHUXg5d1dQTlU4LW9UWE54ZjBxRmJvZzJi
RmVvWGx6NGl2bnZRdXQyMW11SVNHd296aTloUHo4bnNrRGJ0X0Y5VEZWRHBIa3FyUWZOSHhYazRo
RW1TblgxNHRTaHRXRUQzSXdYbXY5S2Y4WlB4QUQxMnhzQXUyemtHalkwVWFYX0RSRU45eTFTZEpN
aWlQaXdvRllCQkZJSzA4eWtJT3FxRWxTc2UySUU3OUFnX0tUcWY4eEp2d2ppcEkyRFo1ZzJdCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxv
cGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK

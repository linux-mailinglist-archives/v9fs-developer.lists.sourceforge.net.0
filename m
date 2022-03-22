Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE084E451C
	for <lists+v9fs-developer@lfdr.de>; Tue, 22 Mar 2022 18:26:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nWiHI-0000sS-Uh; Tue, 22 Mar 2022 17:26:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <infos@adomlu.fr>) id 1nWiHH-0000f5-08
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Mar 2022 17:26:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :List-Unsubscribe:Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WWEBqFaie2wMPgBklK62diLfmFBgjrCQrxAocUcN9CM=; b=dpn+/nVJehA6S6mjlGv9l9IP0H
 +EtiMxdS+pdV7dAxGTwVA/LxKIbFFDPc4QnAzdSmxVZxT5fdim987caThTn6v72F+STy/5it3A0oD
 56yXkYTiJcsQIF07RyliBMdS6aqbYFSqi/eZOdTVRTWc6ApC8/xrGJs00eWbu1AiPLmQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:List-Unsubscribe:
 Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WWEBqFaie2wMPgBklK62diLfmFBgjrCQrxAocUcN9CM=; b=PFq0ADGwecBdc6GRh7epociX+I
 0DeGwWLbVxsMHYfwXSK5eX1G2pyTfOjbVxyw+5+QpG1s/sqYQsp7KNvj2LuOybhO7o2mmVTgz/SX9
 0WtKRFnPKAMM0LwZfDE8UBHSC+Dls2bMzxo6ds9exIzm/8/YJCtUbHw5zZlGnB7gzHjI=;
Received: from smtp.adomlu.fr ([62.210.144.146])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nWiHD-00082o-SI
 for v9fs-developer@lists.sourceforge.net; Tue, 22 Mar 2022 17:26:37 +0000
Date: Tue, 22 Mar 2022 18:26:26 +0100
Authentication-Results: smtp.adomlu.fr; dkim=pass (2048-bit key;
 unprotected) header.d=adomlu.fr header.i=infos@adomlu.fr header.b="Y5dDKrs2"; 
 dkim-atps=neutral
To: v9fs-developer@lists.sourceforge.net
Message-ID: <1647969986.a66416c0a07197015104fd0f1b960402@adomlu.fr>
X-Priority: 3
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha1; q=dns/txt; l=12157; s=mail;
 t=1647969986; c=relaxed/simple; h=From:To:Subject;
 d=adomlu.fr; i=infos@adomlu.fr;
 z=From:=20R&D=20tax=20credits=20<infos@adomlu.fr>
 |To:=20v9fs-developer@lists.sourceforge.net
 |Subject:=20Check=20your=20eligibility;
 bh=tx17yrwzqzhoE1wvCKs7sawfky8=;
 b=Y5dDKrs2CA6KUjkWaI49drWEwQJ2bq9xZxORgCZFjMH8c8hVRx9JUBadMeNgGmSK27a0mxkdWCIU/Q+RDKF2s3sp8TYvkQX3Ruf9WNDylY+brW9w8eNrnBjmXgSDrS/uVecUNQneaMFpab25raUGQtzedyd6IHP43EHkA7Q1zCsI6CC7J+OSbVv70H48g53aqz6uDoA8XELfRYzKwBfc9kE+L9H+PBrpVr5J/mupeprRTH7p3w2R5LV7koUBIQrbxno/bE+Fdd3QzQHp6Zwk4+r2kHesywQYOjxl3pX2MP3uDUYpUfbL9Oelmls0im4b6UXn7nogMqxVP3Q3eCYhZA==
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1nWiHD-00082o-SI
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
From: R&D tax credits via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: infos@adomlu.fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

UiZhbXA7RCBUQVggQ1JFRElUUwpUaGUgYXZlcmFnZSBSJmFtcDtEIFRheCBDcmVkaXQKY2xhaW0g
cGFpZCBvdXQgYnkgdGhlIEhNUkMKdG8gYnVzaW5lc3NlcyBpcyDCozU0awpDaGVjayB0byBzZWUg
aWYgeW91IHF1YWxpZnkgaWYgeW91JnF1b3Q7dmUgYmVlbiBkZXZlbG9waW5nIG5ldyBnb29kcywg
cHJvY2Vzc2VzLCBzeXN0ZW1zLCBvciBhY2NvbXBsaXNoaW5nIGFueSB3b3JrIHdpdGggYSBkZWdy
ZWUgb2YgdW5jZXJ0YWludHkuIFRoaXMgdGF4IGNyZWRpdCBpcyBhdmFpbGFibGUgdG8gYnVzaW5l
c3NlcyBpbiBhbnkgaW5kdXN0cnksIGFuZCBpdCBpcyBjdXJyZW50bHkgdGhlIEhNUkMmcXVvdDtz
IG1vc3QgdW5kZXJ1dGlsaXNlZCB0YXggY3JlZGl0LgoKUXVhbGlmeWluZyBwcm9qZWN0cyByYW5n
ZSBmcm9tIHRoZSBhZGFwdGF0aW9uIG9mIHRlY2hub2xvZ3kgZnJvbSBvbmUgaW5kdXN0cnkgZm9y
IHVzZSBpbiBhbiBpbmR1c3RyeSBmb3Igd2hpY2ggaXQgd2FzIG5vdCBtZWFudCB0byBtYW51ZmFj
dHVyaW5nIGVuaGFuY2VtZW50cyB0byBjcmVhdGUgYSBoaWdoZXIgcXVhbGl0IHByb2R1Y3QgZmFz
dGVyLgoKV2UmcXVvdDt2ZSBkZXZlbG9wZWQgYSB0b29sIHRoYXQgYWxsb3dzIHlvdSB0byB2ZXJp
Znkgb25saW5lIGlmIHlvdSBxdWFsaWZ5IGZvciBSJmFtcDtEIFRheCBDcmVkaXRzIGJhc2VkIG9u
IG91ciAxMiB5ZWFycyBvZiBleHBlcmllbmNlIGluIHRoaXMgaW5kdXN0cnkuCgpDaGVjayBpZiB5
b3UgUXVhbGlmeQpXaGF0IGFyZSBSJmFtcDtEIHRheCBjcmVkaXRzPwpSZXNlYXJjaCBhbmQgRGV2
ZWxvcG1lbnQgKFImYW1wO0QpIHRheCBjcmVkaXRzIGFyZSBhbiBpbmNlbnRpdmUgdG8gcmV3YXJk
IGNvbXBhbmllcyBlbmdhZ2VkIGluIGlubm92YXRpb24uIEEgVUsgdGF4IHJlbGllZiwgUiZhbXA7
RCB0YXggY3JlZGl0cyBjYW4gcHJvdmlkZSB2YWx1YWJsZSBmdW5kaW5nIGZvciBhbnkgY29tcGFu
eSBzcGVuZGluZyBtb25leSBvbiBkZXZlbG9waW5nIG5ldyBwcm9kdWN0cyBhbmQgcHJvY2VzcyBv
ciBpbXByb3ZpbmcgZXhpc3Rpbmcgb25lcy4gVGhpcyByZWxpZWYgY2FuIGdpdmUgeW91ciBidXNp
bmVzcyB0aGUgb3Bwb3J0dW5pdHkgdG8gY2xhaW0gYmFjayBhIHByb3BvcnRpb24gb2YgeW91ciBS
JmFtcDtEIGV4cGVuZGl0dXJlIGFzIHRheCBjcmVkaXRzLCB3aGljaCBjYW4gcmVkdWNlIHlvdXIg
dGF4IGJpbGwgb3IgaW5jcmVhc2UgdGF4YWJsZSBsb3NzZXMuIE5vIG1hdHRlciB0aGUgc2VjdG9y
LCBpZiB5b3UmcXVvdDtyZSBzcGVuZGluZyBtb25leSBvbiByZXNlYXJjaCBhbmQgZGV2ZWxvcG1l
bnQsIHRoZW4geW91IGNvdWxkIGJlIGVsaWdpYmxlIHRvIGNsYWltIFImYW1wO0QgdGF4IGNyZWRp
dHMuCgpDaGVjayB5b3VyIGVsaWdpYmlsaXR5IGZvcgpSJmFtcDtEIHRheCBjcmVkaXRzCkRvIHRo
ZSBmb2xsb3dpbmcgYXBwbHkgdG8geW91ciBidXNpbmVzcz8KCkFyZSB5b3Ugc3BlbmRpbmcgbW9u
ZXkgb24gZGV2ZWxvcGluZyBuZXcgcHJvY2Vzc2VzLCBwcm9kdWN0cyBvciBzZXJ2aWNlcz8KCldl
cmUgdGhvc2UgcHJvamVjdHMgc3RhcnRlZCBpbiB0aGUgbGFzdCAyLTMgeWVhcnM/CgpEbyB5b3Ug
ZW1wbG95IHN0YWZmIGFjcm9zcyBhIHZhcmlldHkgb2Ygcm9sZXMgd2hvIHdvcmsgb24gcHJvamVj
dHMgdGhhdCBhZHZhbmNlIGtub3dsZWRnZSwgYW5kIGNsYXJpZnkgdW5jZXJ0YWludHk/CkFkdmlj
ZQpXZSBjYW4gaGVscCBkZXRlcm1pbmUKCmlmIHlvdSZxdW90O3JlIGVsaWdpYmxlIGZvcgoKUiZh
bXA7RCB0YXggY3JlZGl0CgpHZXQgaW4gdG91Y2ggdG9kYXkhCgoKCkNoZWNrIGlmIHlvdSBRdWFs
aWZ5CgoKClRoaXMgZS1tYWlsIGlzIGJyb3VnaHQgdG8geW91IGJ5IGFuIGluZGVwZW5kZW50IGUt
bWFpbCBtYXJrZXRpbmcgY29tcGFueS4KRm9sbG93IHRoaXMgbGluayB0byBzdG9wIHJlY2Vpdmlu
ZyB0aGVzZSBlLW1haWxzLgpZb3UgaGF2ZSB0aGUgcmlnaHQgb2YgYWNjZXNzLCByZWN0aWZpY2F0
aW9uLCBvcHBvc2l0aW9uIGFuZCBjb25zZW50LCB3aGljaCB5b3UgaGF2ZSBhY2Nlc3Mgb24gdGhp
cyB3ZWIgcGFnZTogUHJpdmFjeSBwb2xpY3kuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2
ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5l
dC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=

Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3651D31B196
	for <lists+v9fs-developer@lfdr.de>; Sun, 14 Feb 2021 18:40:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBLNx-0006ZP-FE; Sun, 14 Feb 2021 17:40:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sarah_j@us-schools.live>) id 1lBLNw-0006ZE-4X
 for v9fs-developer@lists.sourceforge.net; Sun, 14 Feb 2021 17:40:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=List-Id:List-Unsubscribe:Content-Type:MIME-Version:
 To:Reply-To:From:Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Help:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L3PIg+5oq/mVuZeY7b+rbN6snfeMPi/Fg3eqsWt3Bi8=; b=KOzyWpcg9ONnIVBvSHZSzKZ/hw
 Pc4DmzqkdSqYL17fz8FNsfCQSO4zT80c0zHcc8wFuFeIyT9fiz/P7/0aPrGlLRP3dvDmC/Ygagf6r
 +yu1Jjni6asjA8V2l3Ns7CGViQWXif82cOTGjw+alaDaDaO99iwIcVD2RdvwNqfTKqF8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=List-Id:List-Unsubscribe:Content-Type:MIME-Version:To:Reply-To:From:
 Subject:Date:Message-ID:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Help:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=L3PIg+5oq/mVuZeY7b+rbN6snfeMPi/Fg3eqsWt3Bi8=; b=B
 SorcaXHm4aJD5beQhraw/y66gnf6t/jcI0cnJnHIo2qOr0IATwV5vPIYaKZNSRVH6pmQDy4SZSOdH
 cYMDAKIRUnmW/LNJCS10W37L3pS7i89+FPo8/AFsyl902rlHxJTeIOU7KkAxL19bTvcMJtN2EZtNr
 sLBSHQA0cqA4KW6k=;
Received: from us-schools.live ([108.174.197.191] helo=us-schools.live.live)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lBLNQ-0006kP-VG
 for v9fs-developer@lists.sourceforge.net; Sun, 14 Feb 2021 17:40:39 +0000
Received: from us-schools.live (us-schools.live [108.174.197.191])
 by us-schools.live.live (Postfix) with ESMTPS id 41DEBA31AF
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 14 Feb 2021 17:20:05 +0000 (UTC)
Message-ID: <f97910fd88316d90f6cd8c699aa8f35b@us-schools.live>
Date: Sun, 14 Feb 2021 17:20:05 +0000
From: Sarah Johnson <sarah_j@us-schools.live>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
X-Sender: sarah_j@us-schools.live
X-Sbnj-Tracking-Did: 0
X-Sbnj-Subscriber-Uid: vs447c1bbfa85
X-Sbnj-Mailer: SwiftMailer - 5.4.x
X-Sbnj-EBS: http://us-schools.live/index.php/lists/block-address
X-Sbnj-Delivery-Sid: 1
X-Sbnj-Customer-Uid: ow698jj37b83a
X-Sbnj-Customer-Gid: 0
X-Sbnj-Campaign-Uid: bg4946d56b919
X-Report-Abuse: Please report abuse for this campaign here:
 http://us-schools.live/index.php/campaigns/bg4946d56b919/report-abuse/ms4024w94r8f5/vs447c1bbfa85
X-Receiver: v9fs-developer@lists.sourceforge.net
Precedence: bulk
List-Unsubscribe-Post: List-Unsubscribe=One-Click
Feedback-ID: bg4946d56b919:vs447c1bbfa85:ms4024w94r8f5:ow698jj37b83a
X-Spam-Score: 7.3 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: bible-freedom.org]
 2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
 blocklist [URIs: us-schools.live]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [108.174.197.191 listed in zen.spamhaus.org]
 0.1 URIBL_CSS_A Contains URL's A record listed in the Spamhaus CSS
 blocklist [URIs: us-schools.live]
 0.1 URIBL_CSS Contains an URL's NS IP listed in the Spamhaus CSS
 blocklist [URIs: us-schools.live]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lBLNQ-0006kP-VG
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Would you please look this over?
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: Sarah Johnson <sarah_j@us-schools.live>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGkgdGhlcmUsCkkgd2FudCB0byBzaGFyZSBhIG1lc3NhZ2UgdGhhdCBoYXMgYmVlbiBzcHJlYWRp
bmcgYWxsIG92ZXIgdGhlCmludGVybmV0IHRoYXQgY29uY2VybnMgdGhlIHRpbWVzIHdlIGFyZSBs
aXZpbmcgaW4uIFdoZXRoZXIgeW91IGJlbGlldmUKaW4gR29kIG9yIG5vdCwgdGhpcyBpcyBhIG11
c3QgcmVhZCBtZXNzYWdlIQpXZSBjYW4gc2VlIHRocm91Z2hvdXQgdGltZSBob3cgd2UgaGF2ZSBi
ZWVuIHNsb3dseSBjb25kaXRpb25lZCB0bwpjb21lIHRvIHRoaXMgcG9pbnQgd2hlcmUgd2UgYXJl
IG9uIHRoZSB2ZXJnZSBvZiBhIGNhc2hsZXNzIHNvY2lldHkuCldvdWxkIGl0IHN1cnByaXNlIHlv
dSB0byBrbm93IHRoYXQgdGhlIEJpYmxlIGZvcmV0b2xkIG9mIHRoaXMgZXZlbnQ/CkRvbid0IGJl
bGlldmUgbWU/IFRoaXMgbWF5IGJlIHRoZSBtb3N0IGltcG9yYW50IG1lc3NhZ2UgeW91IHdpbGwg
cmVhZAppbiB0aGVzZSB0aW1lcy4uLnBsZWFzZSBkbyBub3QgaWdub3JlIHRoaXMhClRoaXMgbWVz
c3NhZ2UgcmV2ZWFscyB3aGF0IHRoZSBNYXJrIG9mIHRoZSBCZWFzdCBpcywgYW5kIHRoZSBtZWFu
aW5nCmJlaGluZCBjb3VudGluZyBhIG51bWJlciBwZW9wbGUgaGF2ZSBiZWVuIHBvbmRlcmluZyBm
b3IgY2VudHVyaWVzLAo2NjYuIFRoaXMgbWVzc2FnZSBhbHNvIHNoYXJlcyB3aHkgQmFyYWNrIE9i
YW1hIHdpbGwgYmUgdGhlIEFudGljaHJpc3QKYXMgd2VsbCBhcyB0aGUgZ29zcGVsIG1lc3NhZ2Uu
IFRoaXMgaXMgdHJ1bHkgYSBtZXNzYWdlIGZyb20gR29kIQpJbiB0aGUgUmV2ZWxhdGlvbiBvZiBK
ZXN1cyBDaHJpc3QgZ2l2ZW4gdG8gdGhlIGFwb3N0bGUgSm9obiwgd2UgcmVhZDoKLi4iSGUgKHRo
ZSBmYWxzZSBwcm9waGV0IHdobyBkZWNlaXZlcyBtYW55IGJ5IGhpcyBtaXJhY2xlcykgZm9yY2Vz
CmV2ZXJ5b25l4oCUdGhlIHNtYWxsIGFuZCBncmVhdCwgdGhlIHJpY2ggYW5kIHBvb3IsIHRoZSBm
cmVlIGFuZApzbGF2ZXPigJR0byBoYXZlIGEgbWFyayBwdXQgb24gdGhlaXIgcmlnaHQgaGFuZCBv
ciBvbiB0aGVpciBmb3JlaGVhZC4KSGUgd2lsbCBub3QgYWxsb3cgYW55b25lIHRvIG1ha2UgYSBw
dXJjaGFzZSBvciBzZWxsIGFueXRoaW5nIHVubGVzcwp0aGUgcGVyc29uIGhhcyB0aGUgbWFyayB3
aXRoIHRoZSBiZWFzdOKAmXMgbmFtZSBvciB0aGUgbnVtYmVyIG9mIGl0cwpuYW1lLiBUaGlzIGNh
bGxzIGZvciB3aXNkb20uIExldCB0aGUgb25lIHdobyB1bmRlcnN0YW5kcyBjYWxjdWxhdGUgdGhl
CmJlYXN04oCZcyBudW1iZXIsIGZvciBpdOKAmXMgYSBodW1hbiBiZWluZ+KAmXMgbnVtYmVyLiBJ
dHMgbnVtYmVyIGlzCnNpeCBodW5kcmVkIHNpeHR5LXNpeCIgKFJldmVsYXRpb24gMTM6MTYtMTgg
Q0VCKS4uLgpSZWZlcnJpbmcgdG8gdGhlIGxhc3QgZ2VuZXJhdGlvbiwgdGhpcyBjb3VsZCBvbmx5
IGJlIHNwZWFraW5nIG9mIGEKY2FzaGxlc3MgbW9uZXkgc29jaWV0eSwgd2hpY2ggd2UgaGF2ZSB5
ZXQgdG8gc2VlLCBidXQgYXJlIGhlYWRpbmcKdG93YXJkcy4gV2h5PyBSZXZlbGF0aW9uIDEzOjE3
IHRlbGxzIHVzIHRoYXQgd2UgY2Fubm90IGJ1eSBvciBzZWxsCnVubGVzcyB3ZSByZWNlaXZlIHRo
ZSBtYXJrIG9mIHRoZSBiZWFzdCBpbiBvdXIgcmlnaHQtaGFuZCBvciBmb3JlaGVhZC4KV2UgY291
bGQgc3RpbGwgYnV5IG9yIHNlbGwgYW1vbmcgb25lIGFub3RoZXIgd2l0aG91dCByZWNlaXZpbmcg
dGhlCm1hcmsgaWYgcGh5c2ljYWwgbW9uZXkgd2FzIHN0aWxsIGN1cnJlbmN5LiBJdCBsb2dpY2Fs
bHkgZGVkdWNlcyBpdHNlbGYKdG8gdGhpcyByZWFzb24uClRoZXNlIHZlcnNlcyBjb3VsZCBub3Qg
YmUgcmVmZXJyaW5nIHRvIHNvbWV0aGluZyBzcGlyaXR1YWwgYmVjYXVzZQp0aGUgd29yZCByZWZl
cmVuY2VzIHR3byBkaWZmZXJlbnQgcGh5c2ljYWwgbG9jYXRpb25zIChvdXIgcmlnaHQtaGFuZApv
ciBmb3JlaGVhZCkgc3RhdGluZyB0aGUgbWFyayB3aWxsIGJlIG9uIG9uZSAiT1IiIHRoZSBvdGhl
ci4gSXQgb25jZQphZ2FpbiBsb2dpY2FsbHkgZGVkdWNlcyBpdHNlbGYgdG8gdGhpcyByZWFzb24u
CkhlcmUgaXMgd2hlcmUgaXQgcmVhbGx5IHN0YXJ0cyB0byBjb21lIHRvZ2V0aGVyLiBJdCBpcyBz
aG9ja2luZyBob3cKYWNjdXJhdGUgdGhlIEJpYmxlIGlzIGNvbmNlcm5pbmcgdGhlIFJGSUQgbWlj
cm9jaGlwLiBUaGVzZSBhcmUgbm90ZXMKZnJvbSBhIG1hbiBuYW1lZCBDYXJsIFNhbmRlcnMgd2hv
IHdvcmtlZCB3aXRoIGEgdGVhbSBvZiBlbmdpbmVlcnMgdG8KaGVscCBkZXZlbG9wIHRoaXMgbWlj
cm9jaGlwIGluIHRoZSBsYXRlIDE5NjAncy4KQ2FybCBTYW5kZXJzIGF0dGVuZGVkIHNldmVudGVl
biBOZXcgV29ybGQgT3JkZXIgbWVldGluZ3Mgd2l0aApoZWFkcy1vZi1zdGF0ZSBvZmZpY2lhbHMg
c3VjaCBhcyBIZW5yeSBLaXNzaW5nZXIgYW5kIEJvYiBHYXRlcyBvZiB0aGUKQ0lBIHRvIGRpc2N1
c3MgcGxhbnMgb24gaG93IHRvIGJyaW5nIGFib3V0IHRoaXMgb25lLXdvcmxkIHN5c3RlbS4gVGhl
CmdvdmVybm1lbnQgY29tbWlzc2lvbmVkIE1yLiBTYW5kZXJzIHRvIGludmVudCBhIG1pY3JvY2hp
cCBmb3IKaWRlbnRpZnlpbmcgYW5kIGNvbnRyb2xsaW5nIHRoZSBwZW9wbGVzIG9mIHRoZSB3b3Js
ZC1hIG1pY3JvY2hpcCB0aGF0Cm1pZ2h0IGJlIGluc2VydGVkIGJlbG93IHRoZSBza2luIHdpdGgg
YSBoeXBvZGVybWljIG5lZWRsZSAoYSBxdWljaywKY29udmVuaWVudCBzeXN0ZW0gdGhhdCB3b3Vs
ZCBiZSBwcm9ncmVzc2l2ZWx5IGFjY2VwdGVkIGJ5IHRoZQpuYXRpb25zKS4KTXIuIFNhbmRlcnMs
IHdpdGggYSBjcmV3IG9mIGVuZ2luZWVycyB3aXRoIGhpbSwgd2l0aCBVLlMuIGdyYW50Cm1vbmll
cyBzdXBwbGllZCBieSB0YXggZG9sbGFycywgdG9vayBvbiB0aGlzIGNoYWxsZW5nZSBhbmQgcHJv
ZHVjZWQgYQpSRklEIG1pY3JvY2hpcCB0aGF0IGlzIHBvd2VyZWQgYnkgYSBsaXRoaXVtIGJhdHRl
cnksIHJlY2hhcmdlYWJsZSB3aXRoCnRoZSBhaWQgb2YgdGhlIHRlbXBlcmF0dXJlIGZsdWN0dWF0
aW9ucyBpbiBvdXIgc2tpbi4gV2l0aCBvdXQgdGhlCnVuZGVyc3RhbmRpbmcgb2YgdGhlIEJpYmxl
IChTYW5kZXJzIHdhcyBub3QgYSBmb2xsb3dlciBvZiBDaHJpc3QgYXQKdGhlIHRpbWUpLCB0aGVz
ZSBlbmdpbmVlcnMgc3BlbnQgb25lIGFuZCBhIGhhbGYgbWlsbGlvbiBkb2xsYXJzCmNvbmR1Y3Rp
bmcgcmVzZWFyY2ggb24gdGhlIGJlc3QgYW5kIG1vc3QgY29udmVuaWVudCBzcG90IHRvIGhhdmUg
dGhlClJGSUQgbWljcm9jaGlwIGluc2VydGVkIGJlbG93IHRoZSBza2luLgpHdWVzcyB3aGF0PyBU
aGVzZSByZXNlYXJjaGVycyBmb3VuZCB0aGF0IHRoZSBmb3JlaGVhZCBhbmQgdGhlIGJhY2sgb2YK
dGhlIGhhbmQgKHRoZSB0d28gbG9jYXRpb25zIFJldmVsYXRpb24gc2F5cyB0aGUgbWFyayB3aWxs
IGJlIHJlY2VpdmVkKQphcmVuJ3QganVzdCB0aGUgbW9zdCBjb252ZW5pZW50IGxvY2F0aW9ucywg
YnV0IGFyZSBhbHNvIHRoZSBvbmx5CnZpYWJsZSBsb2NhdGlvbnMgZm9yIHJhcGlkLCBzdGVhZHkg
dGVtcGVyYXR1cmUgZmx1Y3R1YXRpb25zIGluIHRoZQpza2luIHRvIHJlY2hhcmdlIHRoZSBsaXRo
aXVtIGJhdHRlcnkuIFRoZSBSRklEIG1pY3JvY2hpcCBpcwphcHByb3hpbWF0ZWx5IDcgbWlsbGlt
ZXRlcnMgaW4gbGVuZ3RoLCAuNzUgbWlsbGltZXRlcnMgaW4gZGlhbWV0ZXIsCmFib3V0IHRoZSBk
aW1lbnNpb25zIG9mIGEgZ3JhaW4gb2YgcmljZS4gSXQncyBjYXBhYmxlIG9mIGhvbGRpbmcgcGFn
ZXMKb2YgaW5mb3JtYXRpb24gYWJvdXQgeW91LiBBbGwgeW91ciBnZW5lcmFsIGhpc3RvcnksIHdv
cmsgaGlzdG9yeSwKY3JpbWUgaW5mb3JtYXRpb24sIGhlYWx0aCBpbmZvcm1hdGlvbiwgYW5kIGZp
bmFuY2lhbCBoaXN0b3J5IG1heSBiZQpzdG9yZWQgb24gdGhpcyBjaGlwLgpCcm90aGVyIFNhbmRl
cnMgYmVsaWV2ZXMgdGhhdCB0aGlzIFJGSUQgbWljcm9jaGlwLCB3aGljaCBoZQpyZWdyZXRmdWxs
eSBoZWxwZWQgaW52ZW50LCBpcyB0aGUgIm1hcmsiIGRlc2NyaWJlZCBpbiBSZXZlbGF0aW9uCjEz
OjE2LTE4LiBUaGUgR3JlZWsgd29yZCBmb3IgIm1hcmsiIGlzICJjaGFyYWdtYSwiIHdoaWNoIGlz
IGRlZmluZWQgYXMKYSAic2NyYXRjaCBvciBldGNoaW5nLiIgSXQncyBhbHNvIGludGVyZXN0aW5n
IHRvIGJlIGF3YXJlIHRoYXQgdGhlCm51bWJlciA2NjYgaXMgYSB3b3JkIGluIHRoZSBvcmlnaW5h
bCBHcmVlayBsYW5ndWFnZS4gVGhhdCB3b3JkIGlzICJjaGkKeGkgc3RpZ21hLCIgd2l0aCB0aGUg
ZmluYWwgcGFydCwgInN0aWdtYSwiIGFsc28gbWVhbmluZyAidG8gc3RpY2sgb3IKcHJpY2suIENh
cmwgYmVsaWV2ZXMgdGhpcyBpcyByZWZlcnJpbmcgdG8gdGhlIHVzZSBvZiBhIGh5cG9kZXJtaWMK
bmVlZGxlIGJlaW5nIHBva2VkIGludG8gYSBwZXJzb24gdG8gaW5zZXJ0IHRoZSBSRklEIG1pY3Jv
Y2hpcC4iCkNhcmwgYXNrZWQgYSBCb3N0b24gTWVkaWNhbCBDZW50ZXIgZG9jdG9yIHdoYXQgd291
bGQgaGFwcGVuIGlmIHRoZQpsaXRoaXVtIGNvbnRhaW5lZCB3aXRoaW4gdGhlIFJGSUQgbWljcm9j
aGlwIGxlYWtlZCBpbnRvIHRoZSBib2R5LiBUaGUKZG9jdG9yIHJlc3BvbmRlZCB0aGF0IGlmIHRo
ZSBtaWNyb2NoaXAgYnJva2UgaW5zaWRlIGEgaHVtYW4gYm9keSwgdGhlCmxpdGhpdW0gd291bGQg
Y2F1c2UgYSBzZXZlcmUgYW5kIHBhaW5mdWwgd291bmQgZmlsbGVkIHdpdGggcHVzLiBUaGlzCmlz
IHdoYXQgdGhlIGJvb2sgb2YgUmV2ZWxhdGlvbiBoYXMgdG8gc2F5OgoiQW5kIHRoZSBmaXJzdCAo
YW5nZWwpIHdlbnQgYW5kIHBvdXJlZCBvdXQgaGlzIGJvd2wgb24gdGhlIGVhcnRoOyBhbmQKdGhl
cmUgY2FtZSBhbiBldmlsIGFuZCBncmlldm91cyBzb3JlIHVwb24gdGhlIG1lbiB0aGF0IGhhZCB0
aGUgbWFyayBvZgp0aGUgYmVhc3QsIGFuZCB0aG9zZSB3aG8gd29yc2hpcHBlZCBpdHMgaW1hZ2Ui
IChSZXZlbGF0aW9uIDE2OjIKREFSQlkpLgpUSEUgSElEREVOIE1FQU5JTkcgQkVISU5EIFRIRSBO
VU1CRVIgNjY2IFJFVkVBTEVEIQpXaGF0IEkgZmlyc3Qgd2FudCB0byBtZW50aW9uLCBiZWZvcmUg
SSBzaGFyZSB3aGF0IHRoZSBIb2x5IFNwaXJpdCBoYXMKcmV2ZWFsZWQgdG8gbWUgY29uY2Vybmlu
ZyB0aGUgbnVtYmVyIG9mIHRoZSBiZWFzdCwgaXMgdGhhdCBHb2QKY29uZmlybXMgaW4gdGhyZWVz
LiBXZSBjYW4gc2VlIHRoaXMgdGhyb3VnaG91dCBzY3JpcHR1cmU6CiJGb3IgdGhlcmUgYXJlIHRo
cmVlIHRoYXQgYmVhciB3aXRuZXNzIGluIGhlYXZlbjogdGhlIEZhdGhlciwgdGhlCldvcmQsIGFu
ZCB0aGUgSG9seSBTcGlyaXQ7IGFuZCB0aGVzZSB0aHJlZSBhcmUgb25lIiAoMSBKb2huIDU6NyBO
S0pWKS4KImFuZCB0aGF0IEhlIHdhcyBidXJpZWQsIGFuZCB0aGF0IEhlIHJvc2UgYWdhaW4gdGhl
IHRoaXJkIGRheQphY2NvcmRpbmcgdG8gdGhlIFNjcmlwdHVyZXMiICgxIENvcmludGhpYW5zIDE1
OjQgTktKVikuCiIuLi5Ib2x5LCBob2x5LCBob2x5LCBMb3JkIEdvZCBBbG1pZ2h0eSwgV2hvIHdh
cyBhbmQgaXMgYW5kIGlzIHRvCmNvbWUhIiAoUmV2ZWxhdGlvbiA0OjggTktKVikuClRoZXJlIGFy
ZSBtYW55IG1vcmUgZXhhbXBsZXMsIGJ1dCBJIHRob3VnaHQgSSB3b3VsZCBqdXN0IHNoYXJlIHRo
cmVlCm9mIHRoZW0gdG8gbWFrZSB0aGUgcG9pbnQuCkV4YW1pbmluZyBSZXZlbGF0aW9uIDEzOjE2
LDE3LDE4LCB0aGUgZmlyc3QgZ3JvdXAgb2YgdGhyZWUgSSB3b3VsZApsaWtlIHRvIHBvaW50IG91
dCBpcyB0aGF0IHRoZSBtYXJrIG9mIHRoZSBiZWFzdCBpcyBkZXNjcmliZWQgaW4gdGhyZWUKc2Vw
YXJhdGUgdmVyc2VzLCAxNiwgMTcgYW5kIDE4LgpUaGUgbmV4dCB0aHJlZSBJIHNlZSBpcyBpbiB2
ZXJzZSAxNiwgIkhlIGNhdXNlcyBhbGwuLi4iIGlzIGZvbGxvd2VkCmJ5IHRocmVlIGNvbnRyYXN0
aW5nIGNhdGVnb3JpZXMgb2YgcGVvcGxlLAoxIC0gImJvdGggc21hbGwgYW5kIGdyZWF0LAoyIC0g
cmljaCBhbmQgcG9vciwKMyAtIGZyZWUgYW5kIHNsYXZlLi4uIi4KVGhlbiB1bnRvIHZlcnNlIDE3
LCBpdCBvcGVucyB3aXRoLCAiYW5kIHRoYXQgbm8gb25lIG1heSBidXkgb3Igc2VsbApleGNlcHQg
b25lIHdobyBoYXMuLi4iLCBmb2xsb3dlZCBieSB0aHJlZSBleHBsYW5hdGlvbnMgb2Ygd2hhdCBv
bmUKbXVzdCBoYXZlIHRvIGJ1eSBvciBzZWxsLAoxIC0gIi4uLnRoZSBtYXJrCjIgLSBvciB0aGUg
bmFtZSBvZiB0aGUgYmVhc3QsCjMgLSBvciB0aGUgbnVtYmVyIG9mIGhpcyBuYW1lIi4KTm93IHVu
dG8gdmVyc2UgMTgsIHdlIHJlYWQgIkxldCBoaW0gd2hvIGhhcyB1bmRlcnN0YW5kaW5nCmNhbGN1
bGF0ZS4uLiIsIHdoaWNoIGlzIGZvbGxvd2VkIGJ5LMKgCjEgLSAidGhlIG51bWJlciBvZiB0aGUg
YmVhc3QsCjIgLSBmb3IgaXQgaXMgdGhlIG51bWJlciBvZiBhIG1hbjoKMyAtIEhpcyBudW1iZXIg
aXMgNjY2Ii4KVGhlIGxhc3QgdGhyZWUgSSBzZWUgaXMgdGhlIG51bWJlciAiNiIgYmVpbmcgdXNl
ZCB0aHJlZSB0aW1lcyBpbiBhCnJvdy4gVGhlIHJlYXNvbiBJJ20gbWFraW5nIHRoaXMgcG9pbnQg
YWJvdXQgR29kIGNvbmZpcm1pbmcgaW4gdGhyZWUgaXMKYmVjYXVzZSBpdCBpcyB0aGUga2V5IHRv
IHVubG9ja2luZyBob3cgdG8gY2FsY3VsYXRlIHRoZSBudW1iZXIgNjY2LgpUaHJvdWdob3V0IHRo
ZSBjZW50dXJpZXMgdGhlcmUgaGF2ZSBiZWVuIHBlb3BsZSB0cnlpbmcgdG8gY2FsY3VsYXRlCm51
bWJlcnMgYmFzZWQgb24gdGl0bGVzIGFuZCBuYW1lcyB0aGF0IGNvbWUgdXAgdG8gdGhlIG51bWJl
ciA2NjYgdG8KaWRlbnRpZnkgb25lIHBlcnNvbiwgdGhlIEFudGljaHJpc3Q7IGJ1dCBmcm9tIFJl
dmVsYXRpb24gMTM6MTgsIEkgZG8Kbm90IHNlZSB3aGVyZSBHb2QgaXMgdGVsbGluZyB1cyB0byBj
b3VudCB1cCB0byA2NjYsIGJ1dCByYXRoZXIgdG8KY291bnQgdGhlIG51bWJlciBvZiB0aGUgYmVh
c3QuIFRoaXMgbnVtYmVyIGlzIGlkZW50aWZpZWQgYXMgNjY2LiBTbwp0aGUgdmVyc2UgaXMgdGVs
bGluZyB1cyB0byBjb3VudCB0aGUgbnVtYmVyIDY2Ni4KV2hhdCBkb2VzIGl0IG1lYW4gdG8gY291
bnQ/IEl0IG1lYW5zIHRvIGFkZCB1cC4gU28gaG93IGNvdWxkIHdlIGFkZAp1cCA2NjY/IFJlbWVt
YmVyIG15IHByZXZpb3VzIHBvaW50IGFib3V0IEdvZCBjb25maXJtaW5nIGluIHRocmVlcyBpcwpr
ZXkgdG8gdW5sb2NraW5nIHRoZSBudW1iZXIgNjY2LiBTbyBsb2dpY2FsbHksIHdoYXQgd291bGQg
YmUgdGhlIGJlc3QKd2F5IHRvIGNvdW50IHRoZSBudW1iZXIgNjY2PyBUbyBjb3VudCBpdCBlcXVh
bGx5IGJ5IHVzaW5nIHRoZSBydWxlIG9mCnRocmVlIGJhc2VkIG9mZiB0aGUgbnVtYmVyLgpXZSBj
YW5ub3QgY291bnQgaXQgZXF1YWxseSBhcyA2MDArNjArNiwgdGhpcyB3b3VsZCBhbHNvIGJyaW5n
IHVzIGJhY2sKdG8gdGhlIHN0YXJ0LgpXZSBjYW5ub3QgY291bnQgaXQgYXMgNjAwKzYwMCs2MDAs
IG9yIDYwKzYwKzYwIGJlY2F1c2UgdGhlcmUgYXJlIG5vCnplcm9lcyBpbiBiZXR3ZWVuIG9yIGF0
IHRoZSBlbmQgb2YgNjY2LgpUaGUgb25seSBsb2dpY2FsIG9wdGlvbiBpcyA2KzYrNj0xOC4KV2hh
dCBpcyBpbnRlcmVzdGluZyBpcyB0aGF0IHRoZSB2ZXJzZSB0aGF0IHJldmVhbHMgZm9yIHVzIHRv
IGNvdW50CnRoZSBudW1iZXIgaXRzZWxmIGlzIHZlcnNlIDE4ICh0aGVyZSBhIHRvdGFsIG9mIDE4
IHZlcnNlcyBpbgpSZXZlbGF0aW9uIENoYXB0ZXIgMTMpLCBiZWluZyB0aGUgdGhpcmQgdmVyc2Ug
b3V0IG9mIHRoZSB0aHJlZSB2ZXJzZXMKdGhhdCBkZXNjcmliZSB0aGUgbWFyayBvZiB0aGUgYmVh
c3QgaW4gUmV2ZWxhdGlvbiAxMzoxNiwxNywxOC4gV2hhdCBpcwoxOCBkaXZpZGVkIGJ5IDM/IDYu
IFNvIDN4Nj0xOCwgb3IgNis2KzY9MTguCkFub3RoZXIgaW50ZXJlc3RpbmcgcG9pbnQgaXMgdGhl
IG9ubHkgdHdvIG90aGVyIGNvbWJpbmF0aW9ucyAobWFraW5nCmEgdG90YWwgb2YgdGhyZWUgcG9z
c2libGUgY29tYmluYXRpb25zKSBmb3IgcGxhY2luZyBhICIrIiBzeW1ib2wgaW4KYmV0d2VlbiA2
NjYgYXJlOgrigKIgNjYrNj03MiBhbmQgNis2Nj03Mi4K4oCiIEFkZCBib3RoIDcyJ3MgdG9nZXRo
ZXIgYW5kIHlvdSBnZXQgMTQ0LgpXaHkgdGhlIG51bWJlciAxNDQgaXMgd29ydGggb3VyIGF0dGVu
dGlvbiBpcyBiZWNhdXNlIHRoZSB2ZXJzZQpmb2xsb3dpbmcgUmV2ZWxhdGlvbiAxMzoxOCBpcyB0
aGUgZmlyc3QgdGltZSBpbiB0aGUgQmlibGUgd2hlcmUgdGhlCjE0NCwwMDAgYXJlIGJlaW5nIGRl
c2NyaWJlZCBpbiBkZXRhaWw6CiJUaGVuIEkgbG9va2VkLCBhbmQgYmVob2xkLCBhIExhbWIgc3Rh
bmRpbmcgb24gTW91bnQgWmlvbiwgYW5kIHdpdGgKSGltIG9uZSBodW5kcmVkIGFuZCBmb3J0eS1m
b3VyIHRob3VzYW5kLCBoYXZpbmcgSGlzIEZhdGhlcuKAmXMgbmFtZQp3cml0dGVuIG9uIHRoZWly
IGZvcmVoZWFkcy4uLiIgKFJldmVsYXRpb24gMTQ6MSkuCk5vdyBpZiB5b3UgYWRkIHVwIGFsbCB0
aHJlZSBudW1iZXJzIGZyb20gY291bnRpbmcgNjY2IGJ5IG1vdmluZyB0aGUKIisiIHN5bWJvbCBh
cm91bmQsIGl0IHdvdWxkIGJlIDcyKzcyKzE4PTE2Mi4gV2hhdCBpcyBjb21wZWxsaW5nIGFib3V0
CnRoZSBudW1iZXIgMTYyLCBpcywgaWYgeW91IGRpdmlkZSAxNDQsMDAwIGJ5IDE2MiwgeW91IGdl
dCA4ODguIFRoZQpuYW1lIG9mIEplc3VzIGluIEdyZWVrIGdlbWF0cmlhIGFkZHMgdXAgdG8gODg4
LiBUaGUgTmV3IFRlc3RhbWVudCB3YXMKb3JpZ2luYWxseSB3cml0dGVuIGluIHRoZSBHcmVlayBs
YW5ndWFnZS4gUmV2ZWxhdGlvbiAxNDoxIG5vdCBvbmx5Cm1lbnRpb25zIHRoZSAxNDQsMDAwLCBi
dXQgYWxzbyB0aGUgTGFtYiB3aG8gaXMgSmVzdXMuCk5vdyB3aGF0IGlzIGludGVyZXN0aW5nIGFi
b3V0IHRoZSBudW1iZXIgZm9yIEplc3VzLCA4ODgsIGlzIHRoYXQgaWYKeW91IGFwcGx5IHRoZSBz
YW1lIGZvcm11bGEgdGhhdCB3YXMgdXNlZCB0byBjb3VudCA2NjYsIHlvdSBnZXQKOCs4Kzg9MjQu
IFdoeSB0aGUgbnVtYmVyIDI0PyBSZXZlbGF0aW9uIGNoYXB0ZXIgNCB0ZWxscyB1cyB0aGVyZSBh
cmUKMjQgZWxkZXJzIHNlYXRlZCBhcm91bmQgdGhlIHRocm9uZSBvZiBHb2QuIFRoaXMgaXMgdGhl
IHNhbWUgdGhyb25lCndoZXJlIEplc3VzIHNpdHMuCk5vdyBpZiB5b3UgdGFrZToK4oCiIDgrOCs4
PTI0CuKAoiA4Kzg4PTk2CuKAoiA4OCs4PTk2CnlvdSBnZXQgMjQrOTYrOTY9MjE2LgpUYWtlIDE0
NCwwMDAgZGl2aWRlZCBieSAyMTYgYW5kIHlvdSBnZXQgNjY2LgpSZW1lbWJlciB0aGF0IHRoaXMg
d2FzIHRoZSBzYW1lIGV4YWN0IGZvcm11bGEgd2UgdXNlZCB0byBjb3VudCB0aGUKbnVtYmVyIDY2
NiB0aGF0IHVsdGltYXRlbHkgYnJvdWdodCBmb3J0aCB0aGUgbnVtYmVyIDg4OC4KSGVyZSBpcyBh
IHF1aWNrIHJlY2FwIHRvIGRlbW9uc3RyYXRlIGhvdyB0aGlzIGZvcm11bGEgY29uZmlybXMgaXRz
ZWxmCmFzIGJlaW5nIHRoZSB0cnVlIHdheSB0byBjb3VudCA2NjY6CjE6IDYrNis2PTE4IMK7IDY2
KzY9NzIgwrsgNis2Nj03MiDCuyAxOCs3Mis3Mj0xNjIKMjogMTQ0LDAwMCBkaXZpZGVkIGJ5IDE2
Mj04ODgKMzogOCs4Kzg9MjQgwrsgODgrOD05NiDCuyA4Kzg4PTk2IMK7IDI0Kzk2Kzk2PTIxNgo0
OiAxNDQsMDAwIGRpdmlkZWQgYnkgMjE2PTY2NgoxOiA2KzYrNj0xOCDCuyA2Nis2PTcyLi4uCkFz
IHlvdSBjYW4gc2VlLCBpdCBpcyBwZXJwZXR1YWwuIEFuZCByZW1lbWJlciB0aGF0IHdlIGNvbnNp
c3RlbnRseQp1c2VkIGEgZm9ybXVsYSB0aGF0IHdvcmtlZCBpbiB0aHJlZXMgYmVpbmcgdGhlIG51
bWJlciB0aGF0IEdvZCB1c2VzCmZvciBjb25maXJtYXRpb24uCkJ5IHV0aWxpemluZyB0aGUgc2Ft
ZSBtZXRob2Qgb2YgY291bnRpbmcgYnkgYWRkaW5nIHRoZSAiKyIgc3ltYm9sIGluCmJldHdlZW4g
dGhlIG51bWJlcnMsIHdoeSBkbyBhbGwgdGhlc2UgbnVtYmVycyByZWxhdGUgaW4gc3VjaCBhIG1h
bm5lcj8KVGhlIGJvb2sgb2YgUmV2ZWxhdGlvbiBjb250YWlucyB0aGUgdXNlIG9mIHRoZSBudW1i
ZXIgNyBpbiB2YXJpb3VzCmZvcm1zLiBGb3IgaW5zdGFuY2UgNyBzZWFscywgNyB0cnVtcGV0cywg
YW5kIDcgYm93bHMuIFdoYXQgaXMKaW50ZXJlc3RpbmcgYWJvdXQgdGhlIG51bWJlciAzNyAodGhy
ZWUgc2V2ZW5zKSBpcyBpZiBpZiB5b3UgZGl2aWRlIGFueQpudW1iZXIgdGhhdCBjb250YWlucyB0
aGUgc2FtZSBzaW5nbGUgZGlnaXQgdGhyZWUgdGltZXMgaW4gYSByb3csIHN1Y2gKYXMgMTExIHRv
IDk5OSwgaXQgY29tZXMgb3V0IHRvIHRoZSB2YWx1ZSBvZiBpZiB5b3Ugd2VyZSB0byBhZGQgYWxs
CnRocmVlIG51bWJlcnMgdXAuIEZvciBleGFtcGxlIDg4OCBkaXZpZGVkIGJ5IDM3IGVxdWFscyAy
NC4gU28KOCs4Kzg9MjQuIE9yIDY2NiBkaXZpZGVkIGJ5IDM3IGVxdWFscyAxOC4gU28gNis2KzY9
MTguIENvdWxkIHRoaXMgYmUKYW5vdGhlciB3YXkgb2YgR29kJ3Mgd29yZCBjb25maXJtaW5nIGl0
c2VsZiB0aGF0IHRoZSBteXN0ZXJ5IGJlaGluZApjYWxjdWxhdGluZyB0aGUgbnVtYmVyIDY2NiBp
bmRlZWQgaXMgMTg/CllldCBhbm90aGVyIGludGVyZXN0aW5nIGZhY3RvciB0byBiZSBhd2FyZSBp
cyB0aGF0IGlmIHlvdSBhZGQgdXAgYWxsCnRoZSBudW1iZXJzIGZyb20gMSB0byAzNiAoMSsyKzMu
Li4rMzYpLCBpdCB0b3RhbHMgNjY2LiBUaGUgbnVtYmVyIDM2LAphcyBpbiB0aHJlZSBzaXhlcz8g
Q291bGQgdGhpcyBiZSBhIHNpZ24gdGhhdCB3ZSBuZWVkIHRvIGFkZCB1cCB0aHJlZQpzaXhlcyBy
YXRoZXIgdGhhbiBwZXJjZWl2aW5nIHRoZSBudW1iZXIgYXMgc2l4LWh1bmRyZWQgc2l4dHkgc2l4
PwpOb3cgd2hhdCBjb3VsZCB0aGlzIGltcGx5PyBXZWxsIHdlIGtub3cgaW4gdGhpcyB3b3JsZCB3
ZSdyZQppZGVudGlmaWVkIGJ5IG51bWJlcnMgaW4gbnVtZXJvdXMgZm9ybXMuIEZyb20gb3VyIGJp
cnRoIGNlcnRpZmljYXRlIHRvCnNvY2lhbCBzZWN1cml0eSwgYWxzbyB3aXRoIG91ciBkcml2ZXJz
IGxpY2Vuc2UsIGJlaW5nIGlkZW50aWZpZWQKZm91bmRlZCBvbiBhIHN5c3RlbSBvZiBydWxlciBz
aGlwLiBTbyBpdCBpcyBwb3NzaWJsZSB0aGF0IHRoaXMgUkZJRAptaWNyb2NoaXAgd2lsbCBjb250
YWluIGEgbmV3IGlkZW50aWZpY2F0aW9uIHRoYXQgaGFzIGEgdG90YWwgb2YgMTgKY2hhcmFjdGVy
cy4KImhlcmUgdGhlIHdpc2RvbSBpcywgdGhlIG9uZSBoYXZpbmcgdGhlIG1pbmQgbGV0IGhpbSBj
YWxjdWxhdGUgdGhlCm51bWJlciBvZiB0aGUgd2lsZCBiZWFzdCwgbnVtYmVyIGZvciAib2YgaHVt
YW4iIGl0IGlzLCBhbmQgdGhlIG51bWJlcgpvZiBpdCA2NjYiIChSZXZlbGF0aW9uIDEzOjEsIEdy
ZWVrIFRyYW5zbGF0aW9uKS4KVGhlIEdyZWVrIHdvcmQgImFudGhyxY1wb3MiIGJlaW5nIHVzZWQg
aW4gdmVyc2UgMTggd2hlcmUgaXQgc2F5cyAib2YKaHVtYW4iIGlzIHRoZSBHcmVlayBzdHJvbmdz
IGNvbmNvcmRhbmNlIEc0NDQuIFRoZSBmaXJzdCB0d28KZGVmaW5pdGlvbnMgb2YgdGhlIHdvcmQg
YXJlICJhIGh1bWFuIGJlaW5nLCB3aGV0aGVyIG1hbGUgb3IgZmVtYWxlIiwKYW5kLCAiZ2VuZXJp
Y2FsbHksIHRvIGluY2x1ZGUgYWxsIGh1bWFuIGluZGl2aWR1YWxzIi4gQ291bGQgdGhlIG51bWJl
cgpvZiB0aGUgYmVhc3QgYXBwbHkgdG8gYWxsIG1hbmtpbmQ/CkluIHRoZSBHcmVlayAodGhlIE5l
dyBUZXN0YW1lbnQgd2FzIG9yaWdpbmFsbHkgd3JpdHRlbiBpbiB0aGUgR3JlZWsKbGFuZ3VhZ2Up
LCBhbmQgb3RoZXIgdHJhbnNsYXRpb25zLCB5b3Ugd2lsbCBub3RpY2UgdGhlIGJlYXN0IGlzCmRl
c2NyaWJlZCBhcyBhbiAiaXQiLCBpbnN0ZWFkIG9mICJoaW0iLiBUaGUgcmVhc29uIEknbSBtYWtp
bmcgdGhpcwpwb2ludCBpcyBiZWNhdXNlIHdoZW4gYSB0cmFuc2xhdGlvbiBzYXlzICJIaXMgbnVt
YmVyIGlzIDY2NiIsIHRoaXMKd291bGQgaW1wbHkgYSBzaW5ndWxhciBwZXJzb24sIHRoZSBBbnRp
Y2hyaXN0LiBCdXQgYnkgc2F5aW5nICJ0aGUKbnVtYmVyIG9mIGl0IDY2NiIsIGltcGxpZXMgdGhh
dCBpdCBpcyBvZiB0aGUgYmVhc3Qgc3lzdGVtIGFzIGEgd2hvbGUuCldlIGNhbiBrbm93IHRoZSBu
dW1iZXIgb2YgdGhlIGJlYXN0IGNhbm5vdCBiZSB0byBpZGVudGlmeSBwcm9kdWN0cwoobGlrZSBh
IG5ldyBiYXJjb2RlKSB0byBidXkgb3Igc2VsbCBiZWNhdXNlIHNjcmlwdHVyZSBzYXlzIHdlIGNh
bm5vdApidXkgb3Igc2VsbCB3aXRob3V0IHRoZSBudW1iZXIgb2YgdGhlIGJlYXN0LiBXaGF0IGFt
IEkgZ2V0dGluZyBhdD8KVGhlcmUgd2lsbCBiZSBpbnN0YW5jZXMgd2hlcmUgeW91IGNvdWxkIGJ1
eSBzb21ldGhpbmcgc29tZW9uZSBtYWRlCnRoZW1zZWx2ZXMgYW5kIGl0IHdvdWxkbid0IGhhdmUg
YSBzdG9yZSBicmFuZGVkIGlkZW50aWZpY2F0aW9uIG9uIGl0LgpCdXQgZm9yIHRoaXMgbnVtYmVy
IHRvIGJlIGluIG91ciBjaGlwcywgdGhhdCBpcyB3aGVyZSBpdCBtdXN0IGJlIHRvCmNvbmNsdWRl
IHVsdGltYXRlbHkgdGhhdCB3ZSBjYW5ub3QgYnV5IG9yIHNlbGwgd2l0aG91dCBoYXZpbmcgdGhl
Cm51bWJlciBvZiB0aGUgYmVhc3QuIEFzIHByZXZpb3VzbHkgbWVudGlvbmVkIGluIFJldmVsYXRp
b24gMTM6MTgsIHRoZQpudW1iZXIgb2YgdGhlIGJlYXN0ICg2KzYrNj0xOCkgaXMgYSAiaHVtYW4g
bnVtYmVyIiwgZGVmaW5pdGlvbgoiZ2VuZXJpY2FsbHksIHRvIGluY2x1ZGUgYWxsIGh1bWFuIGlu
ZGl2aWR1YWxzIi4KQ291bGQgdGhpcyBiZSB0aGUgdGl0bGUgb2YgdGhlIGJlYXN0LCB0aGUgbnVt
YmVyIG9mIGl0cyBuYW1lPyBUaGUKb25lLXdvcmxkIGJlYXN0IHN5c3RlbSB0aGF0IGlzIGlkZW50
aWZpZWQgYnkgMTggY2hhcmFjdGVycz8gVGhpcyBpcwphYmxlIHRvIGZpdCB0aGUgc2NyaXB0dXJl
cyB0aGF0IHNwZWFrcyBvZiBhIG1hcmsgdGhhdCB3ZSBtdXN0IGhhdmUgdG8KYnV5IG9yIHNlbGwg
aW4gb3VyIHJpZ2h0LWhhbmQgb3IgZm9yZWhlYWQsIGFuZCB0aGF0IGl0IGFkZGl0aW9uYWxseQpj
YXJyaWVzIHRoZSBudW1iZXIgb2YgdGhlIGJlYXN0LCBkdXJpbmcgYSBmdXR1cmUgY2FzaGxlc3Mg
bW9uZXkKc29jaWV0eS4KR28gdG86IGh0dHA6Ly9iaWJsZS1mcmVlZG9tLm9yZwpodHRwOi8vdXMt
c2Nob29scy5saXZlL2luZGV4LnBocC9jYW1wYWlnbnNbQ0FNUEFJR05fVUlEL3RyYWNrLXVybC92
czQ0N2MxYmJmYTg1L2EwMGY0YmY5M2E3Y2VmMmE5MzA1M2JjNTFmMTJiNGJjYzE4N2Y2Yzd8aHR0
cDovL3ZvaWNlLXRydXRoLm9yZwpodHRwOi8vdXMtc2Nob29scy5saXZlL2luZGV4LnBocC9jYW1w
YWlnbnMvYmc0OTQ2ZDU2YjkxOS90cmFjay11cmwvdnM0NDdjMWJiZmE4NS82ZjQ4NDc5NmZiMTM4
NzkzY2Q2MDlhYjA2ZWFiNzc4ZGI4ZDM1NDllfGh0dHA6Ly9yZXZvbHV0aW9uYmlibGUub3JnCmh0
dHA6Ly91cy1zY2hvb2xzLmxpdmUvaW5kZXgucGhwL2NhbXBhaWducy9iZzQ5NDZkNTZiOTE5L3Ry
YWNrLXVybC92czQ0N2MxYmJmYTg1LzAwYzlmYTViYTNkNjJlNWE5MjM4M2YyNjVhOTgwNDVhOTlm
YmQyYjBdCnRvIHNlZSBhbGwgdGhlIHByb29mIQpUaGUgQmlibGUgd2FybnMgdXMgaW4gdGhlIGVu
ZCB0aW1lcyB0aGF0IGEgZmFsc2UgcHJvcGhldCB3aWxsIHN0YW5kCnVwIGRvaW5nIG1pcmFjdWxv
dXMgc2lnbnMgZGVjZWl2aW5nIG1hbnkgdG8gb2J0YWluIHRoZSBiZWFzdHMgbWFyazoKLi4iQnV0
IHRoZSBiZWFzdCB3YXMgY2FwdHVyZWQsIGFuZCB3aXRoIGl0IHRoZSBmYWxzZSBwcm9waGV0IHdo
byBoYWQKcGVyZm9ybWVkIHRoZSBzaWducyBvbiBpdHMgYmVoYWxmLiBXaXRoIHRoZXNlIHNpZ25z
IGhlIGhhZCBkZWx1ZGVkCnRob3NlIHdobyBoYWQgcmVjZWl2ZWQgdGhlIG1hcmsgb2YgdGhlIGJl
YXN0IGFuZCB3b3JzaGlwZWQgaXRzIGltYWdlLgpUaGUgdHdvIG9mIHRoZW0gd2VyZSB0aHJvd24g
YWxpdmUgaW50byB0aGUgZmllcnkgbGFrZSBvZiBidXJuaW5nCnN1bGZ1ciIgKFJldmVsYXRpb24g
MTk6MjAgTklWKS4uCldoYXRldmVyIGl0IHRha2VzLCBETyBOT1QgUkVDRUlWRSBJVCEKIlRoZW4g
YSB0aGlyZCBhbmdlbCBmb2xsb3dlZCB0aGVtLCBzYXlpbmcgd2l0aCBhIGxvdWQgdm9pY2UsICJJ
ZgphbnlvbmUgd29yc2hpcHMgdGhlIGJlYXN0IGFuZCBoaXMgaW1hZ2UsIGFuZCByZWNlaXZlcyBo
aXMgbWFyayBvbiBoaXMKZm9yZWhlYWQgb3Igb24gaGlzIGhhbmQsIGhlIGhpbXNlbGYgc2hhbGwg
YWxzbyBkcmluayBvZiB0aGUgd2luZSBvZgp0aGUgd3JhdGggb2YgR29kLCB3aGljaCBpcyBwb3Vy
ZWQgb3V0IGZ1bGwgc3RyZW5ndGggaW50byB0aGUgY3VwIG9mCkhpcyBpbmRpZ25hdGlvbi4gSGUg
c2hhbGwgYmUgdG9ybWVudGVkIHdpdGggZmlyZSBhbmQgYnJpbXN0b25lIGluIHRoZQpwcmVzZW5j
ZSBvZiB0aGUgaG9seSBhbmdlbHMgYW5kIGluIHRoZSBwcmVzZW5jZSBvZiB0aGUgTGFtYi4gQW5k
IHRoZQpzbW9rZSBvZiB0aGVpciB0b3JtZW50IGFzY2VuZHMgZm9yZXZlciBhbmQgZXZlcjsgYW5k
IHRoZXkgaGF2ZSBubyByZXN0CmRheSBvciBuaWdodCwgd2hvIHdvcnNoaXAgdGhlIGJlYXN0IGFu
ZCBoaXMgaW1hZ2UsIGFuZCB3aG9ldmVyCnJlY2VpdmVzIHRoZSBtYXJrIG9mIGhpcyBuYW1lIiAo
UmV2ZWxhdGlvbiAxNDo5LTExKS4KV2UncmUgbGl2aW5nIGluIHZlcnkgcHJvcGhldGljIHRpbWVz
IHdpdGggdmVyeSBpbXBvcnRhbnQgQmlibGljYWwKcHJvcGhlY2llcyBjb21pbmcgdG8gcGFzcy4K
V2hlbiBEb25hbGQgVHJ1bXAgcmVjb2duaXplZCBKZXJ1c2FsZW0gYXMgY2FwaXRhbCBvZiBJc3Jh
ZWwgb24KRGVjZW1iZXIgNiAyMDE3LCB0aGlzIHdhcyBhIGxhcmdlIHN0ZXAgdG8gYnJpbmcgZm9y
dGggdGhlIFRoaXJkIFRlbXBsZQpmb3JldG9sZCBpbiB0aGUgd29yZHMgb2YgR29kLgpHb2QncyB3
b3JkIHRlbGxzIHVzIHRoYXQgdGhlIEFudGljaHJpc3Qgd2lsbCBzZWF0IGhpbXNlbGYgaW4gdGhp
cwp0ZW1wbGU6CiIuLi5hbmQgdGhlIG1hbiBvZiBzaW4gaXMgcmV2ZWFsZWQsIHRoZSBzb24gb2Yg
cGVyZGl0aW9uLCB3aG8gb3Bwb3NlcwphbmQgZXhhbHRzIGhpbXNlbGYgYWJvdmUgYWxsIHRoYXQg
aXMgY2FsbGVkIEdvZCBvciB0aGF0IGlzIHdvcnNoaXBlZCwKc28gdGhhdCBoZSBzaXRzIGFzIEdv
ZCBpbiB0aGUgdGVtcGxlIG9mIEdvZCwgc2hvd2luZyBoaW1zZWxmIHRoYXQgaGUKaXMgR29kIiAo
MiBUaGVzc2Fsb25pYW5zIDI6My00KS4KSW4gdGhlIElzbGFtaWMgZmFpdGgsIHRoZXJlIGlzIGEg
ZmlndXJlIHJlZmVycmVkIHRvIGFzIHRoZSBNYWhkaSwKcmVmZXJyZWQgdG8gYXMgdGhlaXIgbWVz
c2lhaCB3aG8gdGhleSdyZSBlYWdlcmx5IHdhaXRpbmcgdG8gYXBwZWFyLgpUaGVyZSBhcmUgdmFy
aW91cyB0ZXN0aW1vbmllcyBmcm9tIHBlb3BsZSBvbiB0aGUgaW50ZXJuZXQgd2hvIGJlbGlldmUK
dGhpcyBtYW4gc2hhbGwgYmUgQmFyYWNrIE9iYW1hIHdobyBpcyB0byBiZSB0aGUgYmlibGljYWwg
QW50aWNocmlzdC4gSQpwZXJzb25hbGx5IGhhdmUgaGFkIHVudXN1YWwgZHJlYW1zIGNvbmNlcm5p
bmcgaGltLiBIZSBjYW1lIG9uIHN0YWdlCmRlY2xhcmluZyBoaW1zZWxmIHRvIGJlIGEgQ2hyaXN0
aWFuIHdpdGggbm8gYWZmaWxpYXRpb24gdG8gdGhlIE11c2xpbQpmYWl0aCwgYnV0IHdhcyBsYXRl
ciByZXZlYWxlZCBieSBoaXMgb3duIGZhbWlseSBtZW1iZXJzIHRoYXQgaGUgaW5kZWVkCmlzIGEg
cmVsaWdpb3VzIE11c2xpbS4KU28gd2hhdCdzIGluIHRoZSBuYW1lPyBUaGUgbWVhbmluZyBvZiBz
b21lb25lcyBuYW1lIGNhbiBzYXkgYSBsb3QKYWJvdXQgYSBwZXJzb24uIEdvZCB0aHJvdWdob3V0
IGhpc3RvcnkgaGFzIGdpdmVuIG5hbWVzIHRvIHBlb3BsZSB0aGF0CmhhdmUgYSBzcGVjaWZpYyBt
ZWFuaW5nIHRpZWQgdG8gdGhlaXIgbGl2ZXMuIEhvdyBhYm91dCB0aGUgbmFtZSBCYXJhY2sKT2Jh
bWE/IExldCB1cyB0YWtlIGEgbG9vayBhdCB3aGF0IG1heSBiZSBoaWRpbmcgYmVuZWF0aCB0aGUg
c3VyZmFjZS4uLgpKZXN1cyBzYXlzLCAiQW5kIEhlIHNhaWQgdG8gdGhlbSwgJ0kgc2F3IFNhdGFu
IGZhbGwgbGlrZSBsaWdodG5pbmcKZnJvbSBoZWF2ZW4nIiAoTHVrZSAxMDoxOCkuCkluIEhlYnJl
dywgdGhlIG5hbWUgIkJhcmFjayIgbWVhbnMgImxpZ2h0aW5nIiwgYW5kIHRoZSB1c2Ugb2YgIkJh
bWEiCihTdHJvbmdzIEhlYnJldyB3b3JkIDExMTYpIGlzIHVzZWQgdG8gbWVhbiB0aGUgImhlaWdo
dHMiIG9mIGhlYXZlbi4KwqAKVGhlIGRheSBhZnRlciB0aGUgZWxlY3Rpb24gb2YgQmFyYWNrIE9i
YW1hICgxMS8wNC8wOCksIHRoZSB3aW5uaW5nCnBpY2sgMyBsb3R0byBudW1iZXJzIGluIElsbGlu
b2lzIChPYmFtYeKAmXMgaG9tZSBzdGF0ZSkgZm9yIDExLzUvMDgKd2VyZSA2NjYuCk9iYW1hIHdh
cyBhIFUuUy4gc2VuYXRvciBmb3IgSWxsaW5vaXMsIGFuZCBoaXMgemlwIGNvZGUgd2FzIDYwNjA2
LgpSZWdhcmRsZXNzLCB3aG9tc29ldmVyIHNlYXRzIGhpbXNlbGYgaW4gdGhlIGZ1dHVyZSBUaGly
ZCBUZW1wbGUgaW4KSmVydXNhbGVtLCBkZWNsYXJpbmcgaGltc2VsZiB0byBiZSBHb2QgV0lMTCBC
RSBUSEUgQU5USUNIUklTVC4gRE8gTk9UCkJFIERFQ0VJVkVELgpXaHkgZG8gd2UgbmVlZCBKZXN1
cyBDaHJpc3Q/CiJmb3IgYWxsIGhhdmUgc2lubmVkIGFuZCBmYWxsIHNob3J0IG9mIHRoZSBnbG9y
eSBvZiBHb2QiIChSb21hbnMKMjoyMykuCiJGb3IgdGhlIHdhZ2VzIG9mIHNpbiBpcyBkZWF0aCwg
YnV0IHRoZSBnaWZ0IG9mIEdvZCBpcyBldGVybmFsIGxpZmUKaW4gQ2hyaXN0IEplc3VzIG91ciBM
b3JkIiAoUm9tYW5zIDY6MjMpLgpPdXIgZ29vZCB3b3JrcyBjYW4ndCBzYXZlIG91ciBzb3VscyBm
cm9tIG91ciBzaW5zLiBJZiB3ZSBzdGVwIGJlZm9yZQphIGp1ZGdlLCBiZWluZyBndWlsdHkgb2Yg
YSBjcmltZSwgdGhlIGp1ZGdlIGlzIG5vdCBnb2luZyB0byBqdWRnZSB1cwpieSB0aGUgZ29vZCB0
aGF0IHdlIGhhdmUgYWNjb21wbGlzaGVkLCBidXQgcmF0aGVyIHRoZSBjcmltZXMgd2UgaGF2ZQpj
b21taXR0ZWQuIElmIHdlIGFzIGZhbGxlbiBodW1hbml0eSwgY3JlYXRlZCBpbiBHb2QncyBpbWFn
ZSwgcG9zZSB0aGlzCnR5cGUgb2YgbW9yYWwganVzdGljZSwgaG93IG11Y2ggbW9yZSBhIHBlcmZl
Y3QsIHJpZ2h0ZW91cywgYW5kIEhvbHkKR29kPwpHb2QgaGFzIGJyb3VnaHQgZG93biB0byB1cyBI
aXMgZXRoaWNhbCBsYXcncyBieSB0aGUgMTAgY29tbWFuZG1lbnRzCnJlY2VpdmVkIGJ5IE1vc2Vz
IGF0IE10LiBTaWFuaS4gVGhlc2UgbGF3cyB3ZXJlIG5vdCBnaXZlbiBzbyB3ZSBtYXkgYmUKanVz
dGlmaWVkLCBidXQgaW4gb3JkZXIgdGhhdCB3ZSBjb3VsZCBzZWUgdGhlIG5lZWQgZm9yIHRoZSBz
YXZpb3VyLgpUaGV5IGFyZSB0aGUgbWlycm9yIG9mIEdvZCdzIGNoYXJhY3RlciBvZiB3aGF0IEhl
IGhhcyBwdXQgaW4gZWFjaCBhbmQKZXZlcnkgb25lIG9mIHVzLCB3aXRoIG91ciBjb25zY2lvdXMg
YmVhcmluZyB3aXRuZXNzIHRoYXQgd2Uga25vdyB0aGF0Cml0IGlzIHdyb25nIHRvIHN0ZWFsLCBs
aWUsIGRpc2hvbm9yIG91ciBtb3RoZXIgYW5kIGZhdGhlciwgYW5kIHNvCmZvcnRoLgpXZSBtYXkg
YXR0ZW1wdCB0byBmb2xsb3cgYWxsIHRoZSBldGhpY2FsIGxhd3Mgb2YgdGhlIDEwIGNvbW1hbmRt
ZW50cywKYnV0IHdlIHdpbGwgbmV2ZXIgY2F0Y2ggdXAgdG8gdGhlbSB0byBiZSBqdXN0aWZpZWQg
YmVmb3JlIGEgSG9seSBHb2QuClRoYXQgc2FtZSB3b3JkIG9mIHRoZSBsYXcgcmVjZWl2ZWQgYnkg
TW9zZXMgYmVjYW1lIGZsZXNoIG92ZXIgMjAwMAp5ZWFycyBhZ28gaW4gdGhlIGJvZHkgb2YgSmVz
dXMgQ2hyaXN0LiBIZSBjYW1lIHRvIGJlIG91ciBqdXN0aWZpY2F0aW9uCmJ5IHBlcmZlY3RseSBm
dWxmaWxsaW5nIHRoZSBjb21tYW5kbWVudHMgb2YgR29kLCBsaXZpbmcgYSBzaW5sZXNzIGxpZmUK
dGhhdCBvbmx5IEdvZCBtYXkgYWNjb21wbGlzaC4KVGhlIGdhcCBiZXR3ZWVuIHVzIGFuZCB0aGUg
bGF3IGNhbiBuZXZlciBiZSByZWNvbmNpbGVkIGJ5IG91ciBvd24KcGVyc29uYWwgbWVyaXQsIGJ1
dCB0aGUgYXJtIG9mIEplc3VzIGlzIHN0cmV0Y2hlZCBvdXQgYnkgdGhlIGdyYWNlIGFuZAptZXJj
eSBvZiBHb2QuIEFuZCBpZiB3ZSdyZSB0byBncmFiIG9uLCBieSBmYWl0aCBpbiBIaW0sIEhlJ2xs
IHB1bGwgdXMKdXAgYmVpbmcgdGhlIG9uZSB0byBqdXN0aWZ5IHVzLiBBcyBpbiB0aGUgY291cnQg
b2YgbGF3LCBpZiBzb21lb25lCnN0ZXBzIGluIGFuZCBwYXlzIHlvdXIgZGVidCwgZXZlbiB0aG91
Z2ggeW91J3JlIGd1aWx0eSwgdGhlIGp1ZGdlIGNhbgpkbyB3aGF0J3MgbGVnYWwgYW5kIGp1c3Qg
YW5kIGFsbG93IHlvdSB0byBnbyBmcmVlLiBUaGF0IGlzIHdoYXQgSmVzdXMKZGlkIG5lYXJseSAy
MDAwIHllYXJzIGFnbyBvbiB0aGUgY3Jvc3MuIEl0IHdhcyBhIGxlZ2FsIHRyYW5zYWN0aW9uCmJl
aW5nIGZ1bGZpbGxlZCBpbiB0aGUgc3Bpcml0dWFsIHJlYWxtIGJ5IHRoZSBzaGVkZGluZyBvZiBI
aXMgYmxvb2QsCndpdGggSGlzIGxhc3Qgd29yZHMgYmVpbmcsICIuLi5JdCBpcyBmaW5pc2hlZCEu
Li4iIChKb2huIDE5OjMwKS4KU28gd2h5IGRpZCBKZXN1cyBoYXZlIHRvIGRpZSBmb3IgdXM/CkR1
ZSB0byB0aGUgZmFjdCB0aGF0IEdvZCBpcyBIb2x5IGFuZCBqdXN0LCB0aGUgd3JhdGggdGhhdCBi
ZWxvbmdzIHRvCnVzIGNvdWxkIG5vdCBnbyB1bm5vdGljZWQuIEJlY2F1c2Ugb2YgdGhlIHBlcmZl
Y3QgcmlnaHRlb3VzbmVzcyBhbmQKanVzdGljZSBvZiBHb2QncyBjaGFyYWN0ZXIsIGl0IG11c3Qg
YmUgZGVhbHQgd2l0aCwgaXQgbXVzdCBiZSBxdWVuY2hlZAphbmQgc2F0aXNmaWVkLgpGb3IgR29k
IHRha2VzIG5vIHBsZWFzdXJlIGluIHRoZSBkZWF0aCBvZiB0aGUgd2lja2VkIChFemVraWVsIDE4
OjIzKS4KVGhhdCBpcyB3aHkgaW4gSXNhaWFoIGNoYXB0ZXIgNTMsIHRoZSBwbGFjZSBpdCBzcGVh
a3Mgb2YgdGhlIGNvbWluZwpNZXNzaWFoIGFuZCBIaXMgc291bCBiZWluZyBhIHNhY3JpZmljZSBm
b3Igb3VyIHNpbnMsIHdoeSBpdCBzYXlzIGl0CnNhdGlzZmllZCBHb2QgdG8gY3J1c2ggSGlzIG9u
bHkgYmVnb3R0ZW4gU29uLgpUaGF0IGlzIGJlY2F1c2UgdGhlIHdyYXRoIHRoYXQgd2UgZGVzZXJ2
ZSB3YXMganVzdGlmaWVkIGJ5IGJlaW5nCnBvdXJlZCBvdXQgdXBvbiBIaXMgU29uLiBGb3IgaWYg
aXQgd2VyZSB0byBiZSBwb3VyZWQgb3V0IHVwb24gdXMKd2hvJ3ZlIGVhcm5lZCBpdCwgd2Ugd291
bGQgYWxsIGRpZSBhbmQgZ28gdG8gaGVsbC4gR29kIGNyZWF0ZWQgYSBtZWFucwpvZiBlc2NhcGUg
YnkgcG91cmluZyBpdCBvdXQgb24gSGlzIFNvbiB3aG8ncyBzb3VsIGNvdWxkIG5vdCBiZSBsZWZ0
IGluCkhhZGVzLCBidXQgd2FzIHJhaXNlZCBhbmQgc2VhdGVkIG9uIHRoZSByaWdodCBoYW5kIG9m
IEdvZCBpbiBwb3dlci4KU28gbm93IG9uY2Ugd2UgcHV0IG9uIHRoZSBMb3JkIEplc3VzIENocmlz
dCAoUm9tYW5zIDEzOjE0KSwgR29kIG5vCmxvbmdlciBzZWUncyB0aGUgbWFuIG9yIHdvbWFuIHdo
byBkZXNlcnZlcyBIaXMgd3JhdGgsIGJ1dCBub3cgdGhlCmdsb3Jpb3VzIGltYWdlIG9mIEhpcyBw
ZXJmZWN0IFNvbiBsaXZpbmcgaW4gdXMsIGp1c3RpZnlpbmcgdXMgYXMgaWYgd2UKb2J0YWluZWQg
dGhlIHdyYXRoIHdlIGRlc2VydmUsIG1ha2luZyBhIG1lYW5zIG9mIGVzY2FwZSBmcm9tIHRoZSBj
dXJzZQpvZiBkZWF0aC4KTm93IHdoYXQgd2UgbXVzdCBkbyBpcyB0dXJuIGZyb20gb3VyIHNpbnMg
YW5kIHRydXN0IGluIHRoZSBzYXZpb3VyLApjb25mZXNzaW5nIGFuZCB0dXJuaW5nIGZyb20gb3Vy
IHNpbnMuIFRoYXQgaXMgbm90IG9ubHkgYSBoZWFkCmtub3dsZWRnZSBvZiBiZWxpZXZpbmcgaW4g
SmVzdXMsIGluc3RlYWQgcmVjZWl2aW5nIEhpcyB3b3JkcywgdGFraW5nCnRoZW0gdG8gaGVhcnQu
IEluIHdoaWNoIHdlIG5vIGxvbmdlciBsaXZlIHRvIHByYWN0aWNlIHNpbiwgYnV0IHR1cm4KYXdh
eSBmcm9tIG91ciBzaW5zIGFuZCBwcmFjdGljZSByaWdodGVvdXNuZXNzOgoiRG8geW91IG5vdCBr
bm93IHRoYXQgdGhlIHVucmlnaHRlb3VzIHdpbGwgbm90IGluaGVyaXQgdGhlIGtpbmdkb20gb2YK
R29kPyBEbyBub3QgYmUgZGVjZWl2ZWQuIE5laXRoZXIgZm9ybmljYXRvcnMsIG5vciBpZG9sYXRl
cnMsIG5vcgphZHVsdGVyZXJzLCBub3IgaG9tb3NleHVhbHMsIG5vciBzb2RvbWl0ZXMsIG5vciB0
aGlldmVzLCBub3IgY292ZXRvdXMsCm5vciBkcnVua2FyZHMsIG5vciByZXZpbGVycywgbm9yIGV4
dG9ydGlvbmVycyB3aWxsIGluaGVyaXQgdGhlIGtpbmdkb20Kb2YgR29kLiBBbmQgc3VjaCB3ZXJl
IHNvbWUgb2YgeW91LiBCdXQgeW91IHdlcmUgd2FzaGVkLCBidXQgeW91IHdlcmUKc2FuY3RpZmll
ZCwgYnV0IHlvdSB3ZXJlIGp1c3RpZmllZCBpbiB0aGUgbmFtZSBvZiB0aGUgTG9yZCBKZXN1cyBh
bmQKYnkgdGhlIFNwaXJpdCBvZiBvdXIgR29kIiAoMSBDb3JpbnRoaWFucyA2OjktMTEpLgpCeSBk
b2luZyBzbyB3ZSB3aWxsIGNvbWUgdG8gYmUgdHJhbnNmb3JtZWQgaW50byB0aGUgaW1hZ2Ugb2Yg
R29kIGJ5CmZhaXRoIGluIEhpcyBTb24gQ2hyaXN0IEplc3VzIFdobydzIGluY2xpbmVkIHRvIGdp
dmUgdGhlIEhvbHkgU3Bpcml0CnRvIHBlb3BsZSB3aG8gYXNrIG9mIEhpbToKIk1vc3QgYXNzdXJl
ZGx5LCBJIChKZXN1cykgc2F5IHRvIHlvdSwgdW5sZXNzIG9uZSBpcyBib3JuIG9mIHdhdGVyCmFu
ZCB0aGUgU3Bpcml0LCBoZSBjYW5ub3QgZW50ZXIgdGhlIGtpbmdkb20gb2YgR29kLiBUaGF0IHdo
aWNoIGlzIGJvcm4Kb2YgdGhlIGZsZXNoIGlzIGZsZXNoLCBhbmQgdGhhdCB3aGljaCBpcyBib3Ju
IG9mIHRoZSBTcGlyaXQgaXMgc3Bpcml0LgpEbyBub3QgbWFydmVsIHRoYXQgSSBzYWlkIHRvIHlv
dSwgJ1lvdSBtdXN0IGJlIGJvcm4gYWdhaW4uJyAoSm9obgozOjUtNikuCiJCdXQgeW91IGFyZSBu
b3QgaW4gdGhlIGZsZXNoIGJ1dCBpbiB0aGUgU3Bpcml0LCBpZiBpbmRlZWQgdGhlIFNwaXJpdApv
ZiBHb2QgZHdlbGxzIGluIHlvdS4gTm93IGlmIGFueW9uZSBkb2VzIG5vdCBoYXZlIHRoZSBTcGly
aXQgb2YKQ2hyaXN0LCBoZSBpcyBub3QgSGlzIiAoUm9tYW5zIDg6OSkuCk5vdyB3aGF0IGFyZSB5
b3Ugd2FpdGluZyBmb3I/IE91ciBoZWF2ZW5seSBGYXRoZXIgb25seSB3YW50cyB0aGUgYmVzdApm
b3IgdXMsIHJlc3RvcmluZyBldmVyeSB0aGluZyB0aGlzIHdvcmxkIGhhcyBzdG9sZW4gZnJvbSB1
cy4gVGhhdCBpcwp3aGF0IGl0IG1lYW5zIHRvIGJlICJob2x5Ii4gVG8gYmUgbWFkZSB3aG9sZS4K
SGUgaXMgd2FpdGluZyB0byBsaXN0ZW4gdG8geW91LiBUaGF0IEdvZCBnaXZlbiB0b25ndWUgdG8g
c3BlYWsKbGFuZ3VhZ2UsIGJ5IHdheSBvZiBmYWl0aCwgcHJheSB0byBIaW0sIGFzayBIaW0gdG8g
Zm9yZ2l2ZSB5b3UgYnkKY29uZmVzc2luZyB0byBIaW0geW91ciBzaW5zIGFuZCBiZSB3aWxsaW5n
IHRvIGZvcnNha2UgdGhlbTsgdGhhdCB5b3UKcmVjZWl2ZSB0aGUgc2FjcmlmaWNlIG9mIEhpcyBT
b24gSmVzdXMgb24gdGhlIGNyb3NzLCBhbmQgdGhhdCB5b3UgbmVlZApIaXMgSG9seSBTcGlyaXQg
bGl2aW5nIGluc2lkZSB5b3UgdHJhbnNmb3JtaW5nIHlvdSBpbnRvIGEgY2hpbGQgb2YKR29kLgpK
ZXN1cyBzYXlzLCAiYnV0IHdob2V2ZXIgZHJpbmtzIG9mIHRoZSB3YXRlciB0aGF0IEkgc2hhbGwg
Z2l2ZSBoaW0KKHRoZSBIb2x5IFNwaXJpdCkgd2lsbCBuZXZlciB0aGlyc3QuIEJ1dCB0aGUgd2F0
ZXIgdGhhdCBJIHNoYWxsIGdpdmUKaGltIHdpbGwgYmVjb21lIGluIGhpbSBhIGZvdW50YWluIG9m
IHdhdGVyIHNwcmluZ2luZyB1cCBpbnRvCmV2ZXJsYXN0aW5nIGxpZmUuIgpEaWQgeW91IGtub3cg
dGhhdCBKZXN1cyBzcG9rZSBtb3JlIGFib3V0IGhlbGwgdGhhbiBhbnlib2R5IGluIHRoZQpzY3Jp
cHR1cmVzLCBldmVuIG1vcmUgdGhhbiBIZSBzcG9rZSBhYm91dCBoZWF2ZW4/ISBGb3IgdGhpcyB2
ZXJ5IGNhdXNlCkhlIGNhbWUgdG8gZGllIGZvciB1cywgdG8gc2F2ZSB1cyBmcm9tIHRoaXMgcGxh
Y2UgdGhhdCB3ZSBlYXJuZWQgYnkKb3VyIHNpbnMuCsKgCkhlIGRlc2NyaWJlcyBoZWxsIGFzIGEg
YWN0dWFsIHBsYWNlIHdoZXJlLAoiVGhlaXIgd29ybSBkb2VzIG5vdCBkaWUKQW5kIHRoZSBmaXJl
IGlzIG5vdCBxdWVuY2hlZCIgKE1hcmsgOTo0NCkuCkFuZCB3aGVyZSwKIlRoZXJlIHdpbGwgYmUg
d2VlcGluZyBhbmQgZ25hc2hpbmcgb2YgdGVldGguLi4iIChMdWtlIDEzOjI4KS4KSmVzdXMgdGVs
bHMgdXMgd2hvIHRvIGZlYXIsCiJBbmQgZG8gbm90IGZlYXIgdGhvc2Ugd2hvIGtpbGwgdGhlIGJv
ZHkgYnV0IGNhbm5vdCBraWxsIHRoZSBzb3VsLgpCdXQgcmF0aGVyIGZlYXIgSGltIHdobyBpcyBh
YmxlIHRvIGRlc3Ryb3kgYm90aCBzb3VsIGFuZCBib2R5IGluIGhlbGwiCihNYXR0aGV3IDEwOjI4
KS4KIk5vdyBJIHNhdyBhIG5ldyBoZWF2ZW4gYW5kIGEgbmV3IGVhcnRoLCBmb3IgdGhlIGZpcnN0
IGhlYXZlbiBhbmQgdGhlCmZpcnN0IGVhcnRoIGhhZCBwYXNzZWQgYXdheS4gQWxzbyB0aGVyZSB3
YXMgbm8gbW9yZSBzZWEuIFRoZW4gSSwgSm9obiwKc2F3IHRoZSBob2x5IGNpdHksIE5ldyBKZXJ1
c2FsZW0sIGNvbWluZyBkb3duIG91dCBvZiBoZWF2ZW4gZnJvbSBHb2QsCnByZXBhcmVkIGFzIGEg
YnJpZGUgYWRvcm5lZCBmb3IgaGVyIGh1c2JhbmQuIEFuZCBJIGhlYXJkIGEgbG91ZCB2b2ljZQpm
cm9tIGhlYXZlbiBzYXlpbmcsICdCZWhvbGQsIHRoZSB0YWJlcm5hY2xlIG9mIEdvZCBpcyB3aXRo
IG1lbiwgYW5kIEhlCndpbGwgZHdlbGwgd2l0aCB0aGVtLCBhbmQgdGhleSBzaGFsbCBiZSBIaXMg
cGVvcGxlLiBHb2QgSGltc2VsZiB3aWxsCmJlIHdpdGggdGhlbSBhbmQgYmUgdGhlaXIgR29kLiBB
bmQgR29kIHdpbGwgd2lwZSBhd2F5IGV2ZXJ5IHRlYXIgZnJvbQp0aGVpciBleWVzOyB0aGVyZSBz
aGFsbCBiZSBubyBtb3JlIGRlYXRoLCBub3Igc29ycm93LCBub3IgY3J5aW5nLgpUaGVyZSBzaGFs
bCBiZSBubyBtb3JlIHBhaW4sIGZvciB0aGUgZm9ybWVyIHRoaW5ncyBoYXZlIHBhc3NlZCBhd2F5
LicKVGhlbiBIZSB3aG8gc2F0IG9uIHRoZSB0aHJvbmUgc2FpZCwgJ0JlaG9sZCwgSSBtYWtlIGFs
bCB0aGluZ3MgbmV3LicKQW5kIEhlIHNhaWQgdG8gbWUsICdXcml0ZSwgZm9yIHRoZXNlIHdvcmRz
IGFyZSB0cnVlIGFuZCBmYWl0aGZ1bC4nCkFuZCBIZSBzYWlkIHRvIG1lLCAnSXQgaXMgZG9uZSEg
SSBhbSB0aGUgQWxwaGEgYW5kIHRoZSBPbWVnYSwgdGhlCkJlZ2lubmluZyBhbmQgdGhlIEVuZC4g
SSB3aWxsIGdpdmUgb2YgdGhlIGZvdW50YWluIG9mIHRoZSB3YXRlciBvZgpsaWZlIGZyZWVseSB0
byBoaW0gd2hvIHRoaXJzdHMuIEhlIHdobyBvdmVyY29tZXMgc2hhbGwgaW5oZXJpdCBhbGwKdGhp
bmdzLCBhbmQgSSB3aWxsIGJlIGhpcyBHb2QgYW5kIGhlIHNoYWxsIGJlIE15IHNvbi4gQnV0IHRo
ZQpjb3dhcmRseSwgdW5iZWxpZXZpbmcsIGFib21pbmFibGUsIG11cmRlcmVycywgc2V4dWFsbHkg
aW1tb3JhbCwKc29yY2VyZXJzLCBpZG9sYXRlcnMsIGFuZCBhbGwgbGlhcnMgc2hhbGwgaGF2ZSB0
aGVpciBwYXJ0IGluIHRoZSBsYWtlCndoaWNoIGJ1cm5zIHdpdGggZmlyZSBhbmQgYnJpbXN0b25l
LCB3aGljaCBpcyB0aGUgc2Vjb25kIGRlYXRoLiciCihSZXZlbGF0aW9uIDIxOjEtOCkuCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3Bl
ciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBz
Oi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==

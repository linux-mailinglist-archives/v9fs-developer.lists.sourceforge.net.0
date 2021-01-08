Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9822EFCBC
	for <lists+v9fs-developer@lfdr.de>; Sat,  9 Jan 2021 02:32:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ky36t-0001MJ-PV; Sat, 09 Jan 2021 01:32:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <support@otichearing.com>) id 1ky36s-0001M4-71
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Jan 2021 01:32:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Reply-To:From:Date:Subject:To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tx+rC0u4jwDHHHCU/hCHax5uq5Ulpd7leYahtR3hIrE=; b=iEcE7/Dhck5QJGdwypZkxJp+Db
 jfQoId2lgP63wR1Ef0n4tKOEF1MCorkMfffRYlRHrSoIjFG9/+PuiVXM04ktkVsDrgtIQ1NeaXkcH
 B5MHjtz0hsQRF+MpxjT6qfZliBwcBOak+uyE7olnGQtlTvugAxrIKqSZsUZ1Lc8qqfyI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Reply-To:
 From:Date:Subject:To:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tx+rC0u4jwDHHHCU/hCHax5uq5Ulpd7leYahtR3hIrE=; b=c
 jGCB7eK1bT1wjBzvT2EeF9rKVG1GbZate/WLZfArJT0dBXRgCN4S8g3WmmSEdAw+riRzcBw/oppeq
 ON/6COk3EQe8KNEi0z+vIOLK6vMY0zA5YJvxBxjaJBSXaX0zzUhfBbj6NUXwV33mkmRE3xHspPTS+
 cUDcz6eAUulQnO7I=;
Received: from mail.otichearing.com ([202.181.196.249] helo=vm.otichearing.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ky36n-001lXi-1v
 for v9fs-developer@lists.sourceforge.net; Sat, 09 Jan 2021 01:32:06 +0000
Received: by vm.otichearing.com (Postfix, from userid 5004)
 id BD2C374C57EC; Sat,  9 Jan 2021 06:58:40 +0800 (HKT)
To: v9fs-developer@lists.sourceforge.net
X-PHP-Originating-Script: 5004:kbfcxuydnh.php
Date: Fri, 8 Jan 2021 22:58:40 +0000
From: El_Gordo_Primitiva <support@otichearing.com>
Message-ID: <7877d252eea54a11bda5a4b777af4455@www.otichearing.com>
MIME-Version: 1.0
X-Spam-Score: 6.4 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: email.com]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?202.181.196.249>]
 1.5 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [202.181.196.249 listed in psbl.surriel.com]
 0.0 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
 [202.181.196.249 listed in bl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 TRACKER_ID             BODY: Incorporates a tracking ID number
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 PHP_ORIG_SCRIPT        Sent by bot & other signs
 0.0 FILL_THIS_FORM         Fill in a form with personal information
 0.0 T_FILL_THIS_FORM_LOAN  Answer loan question(s)
X-Headers-End: 1ky36n-001lXi-1v
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] ESP
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
Reply-To: DrEnriqueBlanco@mail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgoKCsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIEVsX0dvcmRvX1ByaW1pdGl2YQoKY2FsbGUgZXN0YWJlbiBj
b2xsYW50ZXMgMTIKCjI4MDE3IE1hZHJpZCBTcGFpbgoKVGVsbCAzNCA5MTEgMjMxIDExNyBmYXgs
IDM0IDkxMiA5MTYgMzEzLgoKT2ZmaXppZWxsZSBtaXR0ZWlsdW5nCgpEZXMgcHLDpHNpZGVudGVu
IGRlciBpbnRlcm5hdGlvbmFsZW4KClByb21vdGlvbi1nZXdpbm56dXRlaWx1bmcKClJlZmVyZW56
bnVtbWVyOkVzcC8xNTI4NjExNAoKQmVhcmJlaXR1bmdzbnVtbWVyOjY2NTAwMgoKRW1haWwuYmls
YmFvZ3JvdXBvQGdtYWlsLmNvbQoKwqAKCkd1dGVuIFRhZywKCsKgCgrCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgT2ZmaXppZWxsZSBHZXdpbm5iZW5hY2hy
aXRpZ3VuZwoKIFdpciBzaW5kIGVyZnJldXQgSWhuZW4gbWl0dGVpbGVuIHp1IGvDtm5uZW4sIGRh
cyBkaWUgR2V3aW5ubGlzdGUgTG90dG8KClByb2dyYW1tIGFtIDE5LzEyLzIwMjAuIGVyc2NoaWVu
ZW4gaXN0LiBEaWUgb2ZmaXppZWxsZSBMaXN0ZSBkZXIgR2V3aW5uZXIKCmVyc2NoaWVuIGFtIDA4
LzAxLzIwMjEuIElociBOYW1lIHd1cmRlIGF1ZiBkZW0gTG9zIG1pdCBkZXIgTnVtbWVyOiAwMjUu
CgoxMTQ2NDkgLjc1MCB1bmQgbWl0IGRlciBTZXJpZW5udW1tZXI6IDc5MTAyNi01NyByZWdpc3Ry
aWVydC4gRGllCgpHbMO8Y2tzbnVtbWVyOiA0LTYtOS0xMS0xOS0yMyAqIDEwIGhhdCBpbiBkZXIg
NC4gS2F0ZWdvcmllIGdld29ubmVuLgoKwqAKCiBTaWUgc2luZCBkYW1pdCBHZXdpbm5lciB2b246
IDkzNS40NzAsMDAg4oKsIChOZXVuIEh1bmRlcnQgRsO8bmZ1bmRkcmVpc3NpZwoKVGF1c2VuZCBW
aWVyaHVuZGVydCBVbmQgU2llYnppZyBFdXJvKS4gRGllIFN1bW1lIGVyZ2lidCBzaWNoIGF1cyBl
aW5lcgoKR2V3aW5uYXVzc2Now7x0dHVuZyB2b24gRVVSTzogMTYuNjI2Ljg3MCwwMCAoU2VjaHpl
aG4gTWlsbGlvbmVuIFNlY2hzaHVuZGVydAoKU2VjaHN1bmR6d2FuemlnIFRhdXNlbmQgQWNodGh1
bmRlcnQgVW5kIFNpZWJ6aWcgRXVybykuIERpZSBTdW1tZSB3dXJkZSBkdXJjaAoKMTcgR2V3aW5u
ZXIgYXVzIGRlciBnbGVpY2hlbiBLYXRlZ29yaWUgZ2V0ZWlsdC4gSGVyemxpY2hlbiBHbMO8Y2t3
dW5zY2ghCgpEZXIgR2V3aW5uIGlzdCBiZWkgZWluZXIgU2ljaGVyaGVpdHNmaXJtYSBoaW50ZXJs
ZWd0IHVuZCBpbiBpaHJlbSBOYW1lbgoKdmVyc2ljaGVydC4gVW0ga2VpbmUgS29tcGxpa2F0aW9u
ZW4gYmVpIGRlciBBYndpY2tsdW5nIGRlciBBdXN6YWhsdW5nIHp1Cgp2ZXJ1cnNhY2hlbiBiaXR0
ZW4gd2lyIFNpZSBkaWVzZSBvZmZpemllbGxlIE1pdHRlaWx1bmcgZGlza3JldCB6dSBiZWhhbmRl
bG4sCgpzaWUgaXN0IFRlaWwgdW5zZXJlcyBTaWNoZXJoZWl0c3Byb3Rva29sbHMgdW5kIGdhcmFu
dGllcnQgSWhuZW4gZWluZW4KCnJlaWJ1bmdsb3NlbiBBYmxhdWYuCgogRWlubWFsIGltIEphaHIg
dmVyYW5zdGFsdGVuIHdpciBlaW5lIEF1c2xvc3VuZywgaW4gZGVyIGRpZSBHZXdpbm5lciB2b24K
CnVuc2VyZW0gQ29tcHV0ZXIsIGF1cyA0NS4wMDAgTmFtZW4gYXVzIEFzaWVuLCBFdXJvcGEsIEF1
c3RyYWxpZW4gdW5kIEFtZXJpa2EsCgpnZXpvZ2VuIHdlcmRlbi4KCkJpdHRlIGtvbnRha3RpZXJl
biBTaWUgdW5zZXJlbiBBdXNsYW5kc3NhY2hiZWFyYmVpdGVyIERyLEVucmlxdWUgQmxhbmNvIGJl
aQoKZGVyIFNpY2hlcmhlaXRmaXJtYSBHUlVQTyBCSUxCQU8gUy5MLiBUZWw6IDAwMzQgNjg1IDA5
MSAyMjQuIEVtYWlsOgoKRW5yaXF1ZUJsYW5jb0Bwb3N0LmNvbQoKLkJpdHRlIGRlbmtlbiBTaWUg
ZGFyYW4sIGplZGVyIEdld2lubmFuc3BydWNoIG11c3MgYmlzIHp1bSAyOS8wMS8yMDIxLgoKQW5n
ZW1lbGRldGUgc2Vpbi4gSmVkZXIgbmljaHQgYW5nZW1lbGRldCBHZXdpbm5hbnNwcnVjaCB2ZXJm
w6RsbHQgdW5kIGdlaHQKCnp1csO8Y2sgYW4gZGFzIE1JTklTVEVSSU8gREUgRUNPTk9NSUEgWSBI
QUNJRU5EQS4gQml0dGUgZGVua2VuIHNpZSBhdWNoIGRhcmFuCgpkYXMgMTAlIElocmVzIGdld2lu
bmVzIGFuIGRpZSBTaWNoZXJoZWl0c2Zpcm1hIEdSVVBPIEJJTEJBTyBTLkwuIGdlaHQuIE5hbWVu
Cgp2ZXJzaWNoZXJ0IGlzdC4KCiBXSUNIVElHOiBVbSBWZXJ6w7ZnZXJ1bmdlbiB1bmQgS29tcGxp
a2F0aW9uZW4genUgdmVybWVpZGVuLCBnZWJlbiBTaWUgYml0dGUKCmltbWVyIGRpZSBSZWZlcmVu
ei0gdW5kIEJlYXJiZWl0dW5nc251bW1lciBhbi4gQWRyZXNzw6RuZGVydW5nZW4gdGVpbGVuIFNp
ZQoKdW5zIGJpdHRlIHVtZ2VoZW5kIG1pdC4gQW5iZWkgZWluIEFubWVsZGVmb3JtdWxhciwgYml0
dGUgYXVzZsO8bGxlbiB1bmQgcGVyCgpFbWFpbCBhbiBkaWUgU2ljaGVyaGVpdHNmaXJtYSBHUlVQ
TyBCSUxCQU8gUy5MLm9uIEVtYWlsOgoKYWx2YXJvc2FuY2hlekBlbWFpbC5jb20KCnNjaGlja2Vu
LgoKQml0dGUgRsO8bGxlbiBTaWUgRGllIFVudGVuIEFuZ2VnZWJlbmVuIERhdGVuIEF1czoKCigx
KSBGcmF1IE9kZXIgSGVycjpfX19fX19fX19fX19fX19fX19fICgyKU5hbWU6X19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCgooMykgVm9ybmFtZTpfX19fX19fX19fX19fX19fX19fX19fX19f
XyAoNClBZHJlc3NlOl9fX19fX19fX19fX19fX19fX19fX19fX19fXwoKKDUpIFBsejpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18gKDYpU3RhZHQ6X19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KCig3KSBHZWJ1cnRzZGF0dW06X19fX19fX19fX19fX19fX19fX19fICg4KU5hdGlvbmFs
aXTDpHQ6X19fX19fX19fX19fX19fX19fX19fXwoKKDkpIFRlbGVmb246X19fX19fX19fX19fX19f
X19fX19fX19fX18gKDEwKU1vYmlsOl9fX19fX19fX19fX19fX19fX19fX19fX19fX18KCigxMSkg
RmF4Ol9fX19fX19fX19fX19fX19fX19fX19fX19fX19fICgxMilFbWFpbDpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fCgooMTMpIEJlcnVmOl9fX19fX19fX19fX19fX19fX19fX19fX19fXyAo
MTQpU3ByYWNoZS9TOl9fX19fX19fX19fX19fX19fX19fX19fXwoKIERpZSBvYmVuIGdlbmFubnRl
biwgQW5mb3JkZXJ1bmdlbiBzaW5kIGVyZm9yZGVybGljaC4gSGVyemxpY2hlCgpHbMO8Y2t3w7xu
c2NoZSBub2NoIGVpbm1hbC4KCkNhcmwgRnJhbmNpc2NvIExlb24KClBSw4RTSURFTlQuCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxv
cGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK

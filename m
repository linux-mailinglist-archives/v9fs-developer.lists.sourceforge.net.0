Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A79A321BEFF
	for <lists+v9fs-developer@lfdr.de>; Fri, 10 Jul 2020 23:07:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ju0Ec-0004ud-LZ; Fri, 10 Jul 2020 21:07:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <support@hincity.com>) id 1ju0Eb-0004uU-3q
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jul 2020 21:07:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CjVNqnqg2JQg2Q/vTY7rNcX2mqfP4HzLwh5z6mchQeo=; b=BPFzQehHYw+IRJ7WaAtfZxKeH+
 wke9GGzcgn3vZghuuYjnwBXYTWks46rFK81jcMQe50QVwdH5c/LqmOLzZPzGdYl3988GDdoSUaGzl
 0XeMKCPqCzWETqfV0MCQr0VzH7grDE7f154F5AqWKkOP0heU4NuyC/+oU1uIli2InWFU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=CjVNqnqg2JQg2Q/vTY7rNcX2mqfP4HzLwh5z6mchQeo=; b=E
 FeuCgtEaJAjID3pVcH1vF25tOGDwdhl46kevIQzj42bJEkIgcyaYPY1NFlvz+UEEQBUaD2156W3ix
 +GZUvKfajfucIw5bNHm/RFNXT/Ohx2RjQFsww4Yb1eJJrhtCxXB5HOdvtpiPPv1vLNYo4Wksp3PXb
 TLQlLVUJ9YwPGa6s=;
Received: from smtp0.evwi.net ([209.225.111.194])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ju0EZ-00GW9B-SJ
 for v9fs-developer@lists.sourceforge.net; Fri, 10 Jul 2020 21:07:05 +0000
Received: from hincity.com (unknown [209.127.180.243])
 by smtp0.evwi.net (Postfix) with ESMTPSA id C43784E219
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 10 Jul 2020 15:56:10 -0500 (CDT)
From: support@hincity.com
To: v9fs-developer@lists.sourceforge.net
Date: 10 Jul 2020 20:56:35 -0700
Message-ID: <20200710205635.09826BE6265F2A62@hincity.com>
MIME-Version: 1.0
X-Spam-Score: 5.0 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: consultant.com]
 0.0 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
 [209.225.111.194 listed in bl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain different
 freemails
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal information
X-Headers-End: 1ju0EZ-00GW9B-SJ
Subject: [V9fs-developer] AVISO DE PROCESSAMENTO DE PAGAMENTO PT
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
Reply-To: pedrosanchezpt@consultant.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Q09NUEVUScOHw4NPIElOVEVSTkFDSU9OQUwgREEgTE9URVJJQQoKQyAvIHNhbiBwZXogQW5jYXRh
cmEgMjR0aCAwODkwNSBCYXJjZWxvbmEgRXNwYW5oYQoKVHJhbnNwb3J0ZSBJbnRlcm5hY2lvbmFs
IC8gRGlzdHJpYnVpw6fDo28gZGUgUHLDqm1pb3MKCk7CuiBkZSByZWYuIFRJTyAvCgoxNzA0LzE0
IC8gRVNQIFRFTDogKzM0NjMwMjEwNzczNQoKCgoKCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgMjQuIEpVTklPLiAyMDIwCgoKCiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgT0ZJQ0lBTCBGSU5BTAogICAgICAgICAgICAgICAgICAgTk9USUZJQ0HDh8ODTyBE
RSBMVUNST1MKClRlbW9zIG8gcHJhemVyIGRlIGFudW5jaWFyIHF1ZSBwb2RlbSwgcXVlIGEgbGlz
dGEgZGUgdmVuY2Vkb3JlcwpMT1RFUklBTCBOQUNJT05BTCBlbSAxNi8xMi8yMDE5IHB1YmxpY2Fk
byBpc3QuRGlyIG9mZmljaWFsCkEgbGlzdGEgZGUgdmVuY2Vkb3JlcyBmb2kgcHVibGljYWRhIGVt
IDIyLzEyLzIwMTkuCm8gUmVmZXJlbnpudW1tZXJUSU8gLyAxNzA0LzE0IC8gRVNQLCBuw7ptZXJv
IGRlIGxvdGU6IAowMjUuMTE0NjQ5OTIuMjIyCmUgY29tIG8gbsO6bWVybyBkZSBzw6lyaWU6IDIx
MDMtMDEgZSBuw7ptZXJvIGRvIGxvdGUgR3IgLyAxNS8wMTcgLyAKOXBkCiBSZWdpc3RyYWRvLiBO
w7ptZXJvIGRhIHNvcnRlOiAxMC0xNS0yNy0gNDEtNjYsIHZlbmNldSBubyAzwroKY2F0ZWdvcmlh
LgoKCgogVm9jw6ogw6kgbyB2ZW5jZWRvciBkZTog4oKsIDk1MC4wMDAsMDAuIE5PVkUgQ0VNIEUK
Q0lOQ08gTUlMIEVVUk9TIE8KdG90YWwgw6kgZGUgOS45MDAuMDAwIOKCrCwgTk9WRSBNSUxIw5VF
UyBFIE5PVkUgQ0VNCk1JTCBFVVJPUyBkaXZpZGlkb3MgZW50cmUgb3MgZG96ZSB2ZW5jZWRvcmVz
IGludGVybmFjaW9uYWlzCm5hcyByZXNwZWN0aXZhcyBjYXRlZ29yaWFzLiBPQlJJR0FETwpHTFVD
SyBERVNFSk8gISEhCgoKClNldXMgZ2FuaG9zIHPDo28gZGVwb3NpdGFkb3MgZW0gdW1hIGVtcHJl
c2EgZGUgc2VndXJhbsOnYSBlCnNlZ3VyYWRvIGVtIHNldSBub21lLiBQYXJhIG7Do28KcGFyYSBj
YXVzYXIgYWxndW1hIGNvbXBsaWNhw6fDo28gbm8gcHJvY2Vzc2FtZW50byBkbyBwYWdhbWVudG8s
IApwZWRpbW9zIGEgdm9jw6oKdHJhdGFyIGVzdGEgY29tdW5pY2HDp8OjbyBvZmljaWFsIGNvbSBk
aXNjcmnDp8OjbywgZmF6IHBhcnRlIGRhIG5vc3NhCnByb3RvY29sbyBkZSBzZWd1cmFuw6dhIGUg
Z2FyYW50ZSBxdWUgdHVkbwpGdW5jaW9uYSBzZW0gcHJvYmxlbWFzLiBUb2RvcyBvcyB2ZW5jZWRv
cmVzIHPDo28gc2VsZWNpb25hZG9zIHBvciAKY29tcHV0YWRvciBhIHBhcnRpciBkZSA1NS4wMDAg
bm9tZXMKZW0gdG9kYSBhIEV1cm9wYSwgw4FzaWEsIEF1c3Ryw6FsaWEgZSBBbcOpcmljYSBjb21v
IHBhcnRlIGRlIG5vc3NhCnByb2dyYW1hIHByb21vY2lvbmFsIGludGVybmFjaW9uYWwsIHF1ZSBv
cmdhbml6YW1vcwp1bWEgdmV6IHBvciBhbm8uCgoKRW50cmUgZW0gY29udGF0byBjb20gbm9zc28g
YWdlbnRlIGVzdHJhbmdlaXJvLCBEci4gTWFydGluCkVkd2FyZHMsIG5hIGVtcHJlc2EgZGUgc2Vn
dXJhbsOnYSBBTExJQU5DRSBTRUdVUk9TIFNBIE1BRFJJRApFU1BBTkhBLiBObyB0ZWxlZm9uZTog
KyAzNC0sIDYzMjM4NzM5MCBFLW1haWw6CmFsbGlhbmNlc2VndXJvczA0NUBjb25zdWx0YW50LmNv
bSwgcGFyYSBwcm9jZXNzYW1lbnRvIGUKdHJhbnNmZXJpciBkaW5oZWlybyBkbyBzZXUgcHLDqm1p
byBlbSBkaW5oZWlybyB2aXRvcmlvc28gcGFyYQpxdWFscXVlciBldGlxdWV0YSBkZSBzdWEgZXNj
b2xoYSwgbGVtYnJlLXNlIGRlIHRvZG9zCkFzIHJlaXZpbmRpY2HDp8O1ZXMgZG8gcHLDqm1pbyBk
ZXZlbSBzZXIgcmVnaXN0cmFkYXMgYXTDqSAyOC8wOC8yMDIwLiAKUXVhbHF1ZXIKcmVpdmluZGlj
YcOnw6NvIHF1ZSBuw6NvIGVzdMOhIHJlZ2lzdHJhZGEgZXhwaXJhIGUgdm9sdGEgYW8KTUlOSVNU
w4lSSU8gREFTIEZJTkFOw4dBUy4gQ29tbyBuw6NvIHJlaXZpbmRpY2Fkby4gRSDDqSB0YW1iw6lt
CmluZm9ybW91IHF1ZSA1JSBkbyBzZXUgcHLDqm1pbyBkYSBsb3RlcmlhIHBlcnRlbmNlIMOgIEFM
TElBTkNFClNFR1VST1MgU0wgLi4gQXBlbmFzIDUlIHPDo28gZGV2aWRvcyBhcMOzcyBvIHJlY2Vi
aW1lbnRvIGRhCnByw6ptaW8gcG9ycXVlIG8gcHLDqm1pbyBlc3TDoSBzZWd1cm8gZW0gc2V1IG5v
bWUuCgoKCklNUE9SVEFOVEU6IHBhcmEgZXZpdGFyIGF0cmFzb3MgZSBjb21wbGljYcOnw7Vlcywg
cG9yIGZhdm9yCnNlbXByZSBmb3JuZcOnYSBvIG7Dum1lcm8gZGUgcmVmZXLDqm5jaWEgZSBvIG7D
um1lcm8gZGUgCnByb2Nlc3NhbWVudG8uCk5vdGlmaXF1ZSBhcyBtdWRhbsOnYXMgZGUgZW5kZXJl
w6dvIG8gbWFpcyByw6FwaWRvIHBvc3PDrXZlbC4KRW0gYW5leG8gdW0gZm9ybXVsw6FyaW8gZGUg
aW5zY3Jpw6fDo28sIHByZWVuY2hhIGUgcmV0b3JuZS4KCgoKQXRlbmNpb3NhbWVudGUsCgoKCkNh
cm1lbiBDb25kZS4KClZpY2UgcHJlc2lkZW50ZS4KCgoKICAgICAgICAgICAgICAgICAgQUxMSUFO
Q0UgU0VHVVJPUyBTQQoKCkZPUk1VTMOBUklPIERFIElOU0NSScOHw4NPIFBBUkEgTyBSRUdJU1RP
IERFClVNIExVQ1JPCgoKCi4gVEVMOiArMzQgNjMyMzg3MzkwIEZBWDogMzQ5ODQyMDg4ODUgRS1N
QUlMOgphbGxpYW5jZXNlZ3Vyb3MwNDVAY29uc3VsdGFudC5jb20KCgoKCgpOT01FOiDigKbigKbi
gKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbi
gKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKbigKYgLi4KbsO6bWVybyBkZSByZWZlcsOq
bmNpYSAuLi4uLi4uLi4uIC4uLi4uLiAuLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLgoKCgpURUxF
Rk9ORTog4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm
4oCm4oCm4oCm4oCm4oCm4oCmIE3Dk1ZFTDog4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm
4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCmLiAuLgoKCgpGQVg6IC4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLiAKLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uIC4uLi4uLi4uLi4uLi4uLi4uLi4uIAouLi4uLi4uLi4uLi4uLi4uIERhdGEgZGUgbmFz
Y2ltZW50bzogLi4uLi4uLi4uLi4uLi4uIC4uLiDigKbigKbigKbigKYK4oCm4oCm4oCm4oCm4oCm
4oCm4oCm4oCmCgoKClBST0ZJU1PDg086IOKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKA
puKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKA
piBQQcONUzog4oCm4oCm4oCmIOKApuKApuKApuKApuKApuKApuKApuKApuKApuKApuKApiAK4oCm
4oCm4oCmIOKApuKApuKApgoKCgpOQUNJT05BTElEQURFOiDigKbigKbigKbigKbigKbigKbigKbi
gKbigKbigKbigKbigKbigKbigKbigKbigKYK4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm
4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCmLgoKCgpF
TkNPTlRSTzog4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm4oCm
4oCm4oCm4oCm4oCm4oCm4oCm4oCmLgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3Bl
ckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK

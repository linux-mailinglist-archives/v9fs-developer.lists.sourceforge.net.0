Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DF4678E47
	for <lists+v9fs-developer@lfdr.de>; Tue, 24 Jan 2023 03:34:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pK98W-0007SF-KJ;
	Tue, 24 Jan 2023 02:34:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <evanhensbergen@icloud.com>) id 1pK98V-0007S5-C9
 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:34:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:
 Cc:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZHNbCgWVVT7jpGNkzvsiuGGNtXGpfKi/ODrPRk3Scp4=; b=ZfiZF2aOFSI/5W7O5jux0wwOHJ
 wHa+4NvEXs7pPpnHOwEgtOzX/I7Qnl1YraQYsyzErXkjbqrxcuGPrcx6QatolVlzv3QJPYu/G0092
 1VXX7auepCmPx+9wXnNRwsb61umOQzQXhbFstc9FF5aykGvlTAapSxGbi3EJH8qbmfKc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:References:Message-Id:Content-Transfer-Encoding:Cc:Date:In-Reply-To:
 From:Subject:Mime-Version:Content-Type:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZHNbCgWVVT7jpGNkzvsiuGGNtXGpfKi/ODrPRk3Scp4=; b=lGX+rBxfPOYLCKoSCMZQRyc4tj
 +l+3TTpRyywsGfRtEQVHQB3zzKPwPD1TPZBxfwPLc1UgWrjSk0hV/3CzWVT9V2cnSr/0njZgzEfqg
 swt6ADoELnP5QGUs6SrCb+TbO/9xRHijv3tiZQ1b80YaoPra7v4pQhEJczXclhdC3OQw=;
Received: from ms11p00im-qufo17282001.me.com ([17.58.38.57])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pK98S-00DuzH-C0 for v9fs-developer@lists.sourceforge.net;
 Tue, 24 Jan 2023 02:34:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
 s=1a1hai; t=1674527639;
 bh=ZHNbCgWVVT7jpGNkzvsiuGGNtXGpfKi/ODrPRk3Scp4=;
 h=Content-Type:Mime-Version:Subject:From:Date:Message-Id:To;
 b=coIbI4uymHXeJssODSrKoxz6FRCUt02w3YoFk/9MPmKjOT/q17DjTXFQtM5TJmbGw
 cY9v/z5W/epOACJRK3DlD1F4rGYrR9MDoKAT0noB/UdUMO047Rn4/vv3SYQ1QoDhAD
 x3+PzupR2DQcyRYOb3Mpl3uaQ30HOZjQemcs7jmQuqFcLzKelhYQHPLvQsX3S4fxDu
 ApKPpST0GDhlkVzcmL2edjLuXaUBZ/9q9GBy1tMCPUlo0Tw7QuOQaALC1EHxO9BHI8
 Q+2yoYVmFFTwI5nG+b4e8WR6Zr87aXVUKeaZK2LP38J5CBwjGG3VIE8E+jLJYDgEw2
 Y57G7sS7J8l3g==
Received: from smtpclient.apple (ms11p00im-dlb-asmtpmailmevip.me.com
 [17.57.154.19])
 by ms11p00im-qufo17282001.me.com (Postfix) with ESMTPSA id 5A7091E092A;
 Tue, 24 Jan 2023 02:33:58 +0000 (UTC)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3731.300.101.1.3\))
In-Reply-To: <4478705.9R3AOq7agI@silver>
Date: Mon, 23 Jan 2023 20:33:46 -0600
Message-Id: <CEE93F4D-7C11-4FE3-BB70-A9C865BE5BC2@icloud.com>
References: <20221217183142.1425132-1-evanhensbergen@icloud.com>
 <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <4478705.9R3AOq7agI@silver>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Mailer: Apple Mail (2.3731.300.101.1.3)
X-Proofpoint-ORIG-GUID: XO9m9q2upogfFOPd73bmfT3B9_AEbpYD
X-Proofpoint-GUID: XO9m9q2upogfFOPd73bmfT3B9_AEbpYD
X-Proofpoint-Virus-Version: =?UTF-8?Q?vendor=3Dfsecure_engine=3D1.1.170-22c6f66c430a71ce266a39bfe25bc?=
 =?UTF-8?Q?2903e8d5c8f:6.0.425,18.0.572,17.0.605.474.0000000_definitions?=
 =?UTF-8?Q?=3D2022-01-14=5F01:2022-01-14=5F01,2020-02-14=5F11,2020-01-23?=
 =?UTF-8?Q?=5F02_signatures=3D0?=
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 clxscore=1015 bulkscore=0
 malwarescore=0 suspectscore=0 mlxlogscore=999 spamscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2301240019
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Well timed prompt, sorry — I had been out of pocket while
    traveling. The WIPs in the development branch on GitHub are me working my
    way through the dir-cache patches (which was intended as the next [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [17.58.38.57 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [17.58.38.57 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [evanhensbergen[at]icloud.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1pK98S-00DuzH-C0
Subject: Re: [V9fs-developer] [PATCH v2 00/10] Performance fixes for 9p
 filesystem
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
From: evanhensbergen--- via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: evanhensbergen@icloud.com
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-kernel@vger.kernel.org,
 Ron Minnich <rminnich@gmail.com>, linux-fsdevel@vger.kernel.org,
 Zhengchao Shao via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

V2VsbCB0aW1lZCBwcm9tcHQsIHNvcnJ5IOKAlCBJIGhhZCBiZWVuIG91dCBvZiBwb2NrZXQgd2hp
bGUgdHJhdmVsaW5nLiAgVGhlIFdJUHMgaW4gdGhlIGRldmVsb3BtZW50IGJyYW5jaCBvbiBHaXRI
dWIgYXJlIG1lIHdvcmtpbmcgbXkgd2F5IHRocm91Z2ggdGhlIGRpci1jYWNoZSBwYXRjaGVzICh3
aGljaCB3YXMgaW50ZW5kZWQgYXMgdGhlIG5leHQgc2V0IG9mIHBhdGNoZXMgYWZ0ZXIgdGhpcyBv
bmUpIOKAlCBidXQgdGhvc2UgYXJlIGNvbXBsaW1lbnRhcnkgdG8gdGhpcyBzZXQsIHNvIEnigJlt
IGFib3V0IHNlbmQgb3V0IGEgW1YzXSB3aXRob3V0IHRob3NlIHNvIHdlIGNhbiBnZXQgdGhpcyBp
bnRvIGxpbnV4LW5leHQgd2l0aCBlbm91Z2ggdGltZSBmb3Igc29tZSBtb3JlIGV4aGF1c3RpdmUg
dGVzdGluZyBiZWZvcmUgdGhlIG5leHQgbWVyZ2Ugd2luZG93LgoKSeKAmW0gZmluZSB3aXRoIGZ1
bm5lbGluZyB0aGVzZSB0aHJvdWdoIERvbWluaXF1ZSBzaW5jZSBoZeKAmXMgY3VycmVudGx5IHRo
ZSBhY3RpdmUgbWFpbnRhaW5lciwgYnV0IEnigJl2ZSBhbHNvIHJlLWVzdGFibGlzaGVkIGtlcm5l
bC5vcmcgPGh0dHA6Ly9rZXJuZWwub3JnLz4gY3JlZGVudGlhbHMgc28gSSBjYW4gZmllbGQgdGhl
IHB1bGwtcmVxdWVzdCBpZiBkZXNpcmVkLgoKICAgICAgICAgIC1FcmljCgoKPiBPbiBKYW4gMjMs
IDIwMjMsIGF0IDEwOjMxIEFNLCBDaHJpc3RpYW4gU2Nob2VuZWJlY2sgPGxpbnV4X29zc0BjcnVk
ZWJ5dGUuY29tPiB3cm90ZToKPiAKPiBPbiBNb25kYXksIERlY2VtYmVyIDE5LCAyMDIyIDEyOjIy
OjA3IEFNIENFVCBFcmljIFZhbiBIZW5zYmVyZ2VuIHdyb3RlOgo+PiBUaGlzIGlzIHRoZSBzZWNv
bmQgdmVyc2lvbiBvZiBhIHBhdGNoIHNlcmllcyB3aGljaCBhZGRzIGEgbnVtYmVyCj4+IG9mIGZl
YXR1cmVzIHRvIGltcHJvdmUgcmVhZC93cml0ZSBwZXJmb3JtYW5jZSBpbiB0aGUgOXAgZmlsZXN5
c3RlbS4KPj4gTW9zdGx5IGl0IGZvY3VzZXMgb24gZml4aW5nIGNhY2hpbmcgdG8gaGVscCB1dGls
aXplIHRoZSByZWNlbnRseQo+PiBpbmNyZWFzZWQgTVNJWkUgbGltaXRzIGFuZCBhbHNvIGZpeGVz
IHNvbWUgcHJvYmxlbWF0aWMgYmVoYXZpb3IKPj4gd2l0aGluIHRoZSB3cml0ZWJhY2sgY29kZS4K
Pj4gCj4+IEFsdG9nZXRoZXIsIHRoZXNlIHNob3cgcm91Z2hseSAxMHggc3BlZWQgaW5jcmVhc2Vz
IG9uIHNpbXBsZQo+PiBmaWxlIHRyYW5zZmVycy4gIEZ1dHVyZSBwYXRjaCBzZXRzIHdpbGwgaW1w
cm92ZSBjYWNoZSBjb25zaXN0ZW5jeQo+PiBhbmQgZGlyZWN0b3J5IGNhY2hpbmcuCj4+IAo+PiBU
aGVzZSBwYXRjaGVzIGFyZSBhbHNvIGF2YWlsYWJsZSBvbiBnaXRodWI6Cj4+IGh0dHBzOi8vZ2l0
aHViLmNvbS92OWZzL2xpbnV4L3RyZWUvZXJpY3ZoLzlwLW5leHQKPj4gCj4+IFRlc3RlZCBhZ2Fp
bnN0IHFlbXUsIGNwdSwgYW5kIGRpb2Qgd2l0aCBmc3gsIGRiZW5jaCwgYW5kIHNvbWUKPj4gc2lt
cGxlIGJlbmNobWFya3MuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBFcmljIFZhbiBIZW5zYmVyZ2Vu
IDxldmFuaGVuc2JlcmdlbkBpY2xvdWQuY29tPgo+IAo+IEhpIEVyaWMsCj4gCj4gd2hhdCdzIHlv
dXIgcGxhbiBvbiB0aGlzIHNlcmllcz8gSSBqdXN0IGhhZCBhIGxvb2sgYXQgeW91ciBnaXRodWIg
cmVwbyBhbmQgc2F3Cj4gdGhlcmUgaXMgYSBsb3Qgb2Ygc3R1ZmYgbWFya2VkIGFzIFdJUC4KPiAK
PiBCZXN0IHJlZ2FyZHMsCj4gQ2hyaXN0aWFuIFNjaG9lbmViZWNrCj4gCj4gCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1h
aWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9s
aXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK

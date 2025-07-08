Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AD7C2AFCB4C
	for <lists+v9fs-developer@lfdr.de>; Tue,  8 Jul 2025 15:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:To:Message-ID:Mime-Version:From:Date:Sender:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gxC1MRnb+wnvjtkk7Di90b9K0cTey2d5pLdxCdy45Rg=; b=VlakdObc0K4GmAE2cJ6nXuC8XU
	kT+22BquMV/a+39z3AEKAUdZ/hu5JXzZ7KRs2OdrYDVuUKx4ImyrGNXkvYfKVSOBykn5AYPhV466a
	tToHy8pCLbIsHByAt9AVpdvRzoSypw6cedoBhjdjdNzbyiIhsemzZGJxQz3hnOd4K8Ks=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1uZ7z9-0000lI-Oq;
	Tue, 08 Jul 2025 13:03:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <bounces+45460243-847c-v9fs-developer=lists.sourceforge.net@em3725.sspm-services.info>)
 id 1uZ7z8-0000lB-LK for v9fs-developer@lists.sourceforge.net;
 Tue, 08 Jul 2025 13:03:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:
 Mime-Version:From:Date:Content-Type:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ur957GfCF00YoJn8ymevAo4epev3u59pIQ9Kfh9XKaY=; b=FAb3Ivcf5jZjc1kvVOiD+VogTb
 pVlzEz4yl1iMYYNWt4Q7V8iPvpkrOavgciAHLTF8gbc1Bey1ah5QCGb7mexauTOqTSbFKSgIjUwtQ
 d78QRhT7mdhrBYqiWBnNo9j6Iw/UB6TgypqNgaX4CfOiZFvOu+VFQDQ2KtipgcLdHDxc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=To:List-Unsubscribe:Reply-To:Subject:Message-ID:Mime-Version:From:Date:
 Content-Type:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ur957GfCF00YoJn8ymevAo4epev3u59pIQ9Kfh9XKaY=; b=hI54IxIGUZ5m6TgTJ8DvM1tluV
 3c+SIuCB0ScaHtNxqD7EYJARIP60xa2OnloUoPiaZvXsALju3/oWlQg9401KboaM10yB5qJLBfo9U
 aIAWdLpVno9uSP6KVU2pMecp3K9m4HEti2JeqQtMcFrsYH5L1QRISIAN6jwoAgATg7VQ=;
Received: from xtrwhkzx.outbound-mail.sendgrid.net ([167.89.1.234])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uZ7z7-0001MW-TU for v9fs-developer@lists.sourceforge.net;
 Tue, 08 Jul 2025 13:03:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sspm-services.info;
 h=content-type:from:mime-version:subject:reply-to:list-unsubscribe:
 list-unsubscribe-post:to:cc:content-type:from:subject:to;
 s=s1; bh=Ur957GfCF00YoJn8ymevAo4epev3u59pIQ9Kfh9XKaY=;
 b=ZxeDuj6tmzCh2gJu3DYg3ZgeEtiI2OlhUDqBH/h4HIiovXhKNbSu4ipsNmDDplhR937W
 A5PC/Rvcct5aA2W2jgau47+ITU1tHctmdllshP+r4MNpajtTP+nwcoxhh4TI7DfSSljs1N
 WU+717bUcG7KYpch6KLT91mgfSo2vhqr1eWz741C52GTAqwMgvVPBVsfl3S5AKJ8qvvZQk
 7vAmbldt8XBQaLcZ7nhlI5FE77LfElMlHaAQOB+h/ca/gs+L2/rLE3y7AXUyTKEOaVlOsa
 ajQhustB0SMrA12ql+ceE93XOwc19RoEV6XkLWwActrz5MZBWzHLdum+rz/PrSuQ==
Received: by recvd-5bc4f988-ghx6x with SMTP id
 recvd-5bc4f988-ghx6x-1-686D1032-68
 2025-07-08 12:33:54.366589999 +0000 UTC m=+2923201.308860694
Received: from NDU0NjAyNDM (unknown) by geopod-ismtpd-17 (SG) with HTTP
 id Zm2TENANT9-S89m9Vq_cIg Tue, 08 Jul 2025 12:33:54.324 +0000 (UTC)
Date: Tue, 08 Jul 2025 12:33:55 +0000 (UTC)
From: LIAM GILL <liamgill@sspm-services.info>
Mime-Version: 1.0
Message-ID: <Zm2TENANT9-S89m9Vq_cIg@geopod-ismtpd-17>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-SG-EID: =?us-ascii?Q?u001=2ETolYenpKc8WPKWS8qeQXpPeNkT4DniE9XAOpRX=2FhI=2Ft0lYBPxiUtQMsCl?=
 =?us-ascii?Q?zuW1L4m4CU2=2FWcuH5LqSBywvjyZUIypeC=2F19DHv?=
 =?us-ascii?Q?x6vVqtgBWxEo2UYwkhzBvOMTQQFvx8A9IXQbYTk?=
 =?us-ascii?Q?p7e0X13etR7YoxzZASHluWndGcyed7lWIP6ub9I?=
 =?us-ascii?Q?GmQn7YzzL6tH6rqSBFyhf1tCdwuTO7D+g8AEFxJ?=
 =?us-ascii?Q?yqRLqIB8lCikub7+arcRcncvZUufRBxKNFhPnJP?=
 =?us-ascii?Q?VzTwKYTjA4yrByRNiPWxtdQWWA=3D=3D?=
X-SG-ID: =?us-ascii?Q?u001=2EXwhBPNhCejkv4+fVosb2QVfR16Qxp9CrA7PjDe5zzeI=2F0IZCBsPXtgHbA?=
 =?us-ascii?Q?oGIj+RskLxA4N2rJjSWrHfgX07tLOm0v5BUQcd6?=
 =?us-ascii?Q?w3knjorGi7Hwu0WCOA5AFSvy0=2FwlG32=2FsXpzz17?=
 =?us-ascii?Q?7pQzuzz+Vcuj22=2FMz989ji=2FpvJJv67Nr6wGV3+j?=
 =?us-ascii?Q?22KgmeTL4hjCBWUGYfq6P1na79bhEw+2PYtq977?=
 =?us-ascii?Q?KkOq0Ui7fQCz+IZ=2FN9H9srkl0A5De6Ero3J7bWc?=
 =?us-ascii?Q?n1h6bKj=2F0e4W8MDOQ7fpxyd58Tkrab19woxbMJu?=
 =?us-ascii?Q?ubXRXJrrasEsh=2FaKxlWz5IFqdJeWJ+Pw50xvLb0?=
 =?us-ascii?Q?C56GW=2FadEBU+QIhMK1YkGUwCZ=2FaigXLZ=2FyNc1fH?=
 =?us-ascii?Q?shI9XklXgxlMXhuZRDjCaFZAD4L97EoN2aDXby+?=
 =?us-ascii?Q?J9i93xl9=2F4H4uHuQ=2F8H67LQ8ivvMGlEw5KhZKEL?=
 =?us-ascii?Q?HhC4rih4GfBG=2FLXI3XHrWyHSe8Tn7GT9hdWh7pK?=
 =?us-ascii?Q?l0P01grsSE3HAQi65ymt4=2Fi5uhPo7gaxCgGIKSW?=
 =?us-ascii?Q?6XdGLWDrj9DPCy9FORTx51ANYU+5z0ua4xCzYDr?=
 =?us-ascii?Q?K97r1+n9tHdLGEHFFHWd+uVmnE7uI6eAVtl+VD+?=
 =?us-ascii?Q?2oHbMLCO8kl6IVmDvDo4MSQPa95EjqiPZuH=2FWHy?=
 =?us-ascii?Q?dQDi3YDVwDMXQ7KMxIJScczMtUAd649DLjc2rjj?=
 =?us-ascii?Q?bucVyufDUYiQQjALV=2FMTlXf?=
To: v9fs-developer@lists.sourceforge.net
X-Entity-ID: u001.+yTEgh2CWVcCzNxHNq6zfg==
X-Spam-Score: 6.9 (++++++)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  We are pleased to introduce Velositi Consultancy Group, a
 Finnish-owned brokerage and consultancy firm headquartered in Ontario, Canada.
 As the exclusive representative of leading financial institutions across
 Oman, Saudi Arabia, and Dubai,
 we offer customized financing solutions globally.
 Through our partners, we provide loan faciliti [...] 
 Content analysis details:   (6.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
 [167.89.1.234 listed in psbl.surriel.com]
 1.8 URIBL_CT_SURBL         Contains an URL listed in the CT SURBL blocklist
 [URI: u45460243.ct.sendgrid.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [167.89.1.234 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1uZ7z7-0001MW-TU
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Strategic Financing & Brokerage Collaboration
 Opportunity
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
Reply-To: shenbao.mai@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

V2UgYXJlIHBsZWFzZWQgdG8gaW50cm9kdWNlIFZlbG9zaXRpIENvbnN1bHRhbmN5IEdyb3VwLCBh
IEZpbm5pc2gtb3duZWQgYnJva2VyYWdlIGFuZCBjb25zdWx0YW5jeSBmaXJtIGhlYWRxdWFydGVy
ZWQgaW4gT250YXJpbywgQ2FuYWRhLgoKQXMgdGhlIGV4Y2x1c2l2ZSByZXByZXNlbnRhdGl2ZSBv
ZiBsZWFkaW5nIGZpbmFuY2lhbCBpbnN0aXR1dGlvbnMgYWNyb3NzIE9tYW4sIFNhdWRpIEFyYWJp
YSwgYW5kIER1YmFpLCB3ZSBvZmZlciBjdXN0b21pemVkIGZpbmFuY2luZyBzb2x1dGlvbnMgZ2xv
YmFsbHkuIFRocm91Z2ggb3VyIHBhcnRuZXJzLCB3ZSBwcm92aWRlIGxvYW4gZmFjaWxpdGllcyBh
dCBhIGNvbXBldGl0aXZlIDMlIGFubnVhbCBpbnRlcmVzdCwgZmVhdHVyaW5nIGEgMi15ZWFyIGdy
YWNlIHBlcmlvZCBhbmQgbm8gcGh5c2ljYWwgY29sbGF0ZXJhbOKAlGEgdW5pcXVlIG9mZmVyIHRh
aWxvcmVkIGZvciB0b2RheeKAmXMgYnVzaW5lc3MgZW52aXJvbm1lbnQuCgpUaGlzIG9wcG9ydHVu
aXR5IGlzIGV4dGVuZGVkIGVzcGVjaWFsbHkgdG8gcmVjb2duaXplZCBidXNpbmVzcyBsZWFkZXJz
IGxpa2UgeW91cnNlbGYuIFlvdXIgcmVjZW50IGxpc3RpbmcgYnkgeW91ciBjb3VudHJ54oCZcyBD
aGFtYmVyIG9mIENvbW1lcmNlIGFzIOKAnFJlbGlhYmxlIHRvIGRvIGJ1c2luZXNzIHdpdGjigJ0g
ZHVyaW5nIHRoZSBTYXVkaSBCdXNpbmVzcyBTdW1taXQgaGlnaGxpZ2h0cyB0aGUgcG90ZW50aWFs
IGZvciBtZWFuaW5nZnVsIGNvbGxhYm9yYXRpb24uCgpCZXlvbmQgZGlyZWN0IGZpbmFuY2luZywg
d2UgYWxzbyB3ZWxjb21lIGJyb2tlciBwYXJ0bmVyc2hpcHMgZm9yIHJlZmVycmluZyBidXNpbmVz
c2VzIGluIG5lZWQgb2YgZnVuZGluZy4KCldlIHdvdWxkIGJlIHBsZWFzZWQgdG8gZGlzY3VzcyBo
b3cgd2UgY2FuIHN1cHBvcnQgeW91ciBncm93dGggYW5kIGZpbmFuY2lhbCBvYmplY3RpdmVzLgoK
V2FybSByZWdhcmRzLApMaWFtIEdpbGwKQ2hhaXJtYW4sIEJ1c2luZXNzIERldmVsb3BtZW50ClZl
bG9zaXRpIENvbnN1bHRhbmN5IEdyb3VwCjMwMCBKb2huIFN0cmVldCwgU3VpdGUgNTA2LCBUaG9y
bmhpbGwsIE9OIEwzVCA2TTgsIENhbmFkYQoKTElBTSBHSUxMCgozMDAgSm9obiBTdHJlZXQsIFN1
aXRlIDUwNiAsIE9OICwgVGhvcm5oaWxsICwgIEwzVCA2TTgKClVuc3Vic2NyaWJlICggaHR0cHM6
Ly91NDU0NjAyNDMuY3Quc2VuZGdyaWQubmV0L3dmL3Vuc3Vic2NyaWJlP3Vwbj11MDAxLlhpb2JG
Rkd5RWR1RHppNWotMkZWcDE1QTFibG5JN2xFZ3Qwa1UxVUpUWlhaeXk3ZjNIQ3lDOXE5akp0b09n
bVItMkJRRTVSUVptdkJTZHRRdlVwUjQtMkZiSkFXM1lPUVBrNC0yQk1IcUVkZWZaUTFVVGxHNVFE
RXl3eEp6Tm8zRzlKZnRCdHBpYzBiNVhPZ0tMQkdYVUhxSmUzTmJteVNJRlpPUlhYa0wzRUUxYXZ3
dkxVbFFUN0pISS0yRlJTMVRIT09HME1heW5ybHNkZzdSY1V1WFI1MmhLaUdJdXdzcnhuYUJBRDFw
LTJGTWt3bzd2TUw1bVE3U2toSDJZRGhYbUd6enh1eFctMkJ0V1FTM3dObk5HSDktMkZtejFBTWFB
YjVMVXNwWmNrQlhZRmJuSE5mZ3MyZzdNSFNzZDZVVXFwQXYtMkZDdTBOQ044TTdmTGw0cTVITFFU
Q1RFY1NNaDRtaHMtMkZkaG4wem00OC0yQk4tMkJSMHBycGY2UkpnY0I5VXotMkZIV1hVaGZnaEJN
WGo0TjlTMzlLMm04dXFoeUpseGc4bi0yRjdhMUItMkZXTXA4LTJCNGQxNU5uSFp1U0NOb0tlVXVK
UHl3Uzk4UUhKRUloRUZxV3BYQUQ4U3ZXbGMzTG5QdmNqSW5IZnZxY1BaNkhScVZNRW5Bb3poMlE3
czE2N0V5ZmcxdGpEbDhsRmFDbjhhRUpPWTl1NGVJRllNeGJJWkJiYUZCUkNuN2ZQQmZ2LTJCY1hv
OUtoeTNuME16Q216b3Brd3hwVm8zR0trdTROWmt4R1dSWUxudEFMZVRMWWVIQnA2cEh2TmNlU2lx
V0lYd1lJREtjTndxWVotMkZEVE9hSUV4a0hLeVIwbmk2dXlEWXU4QkpYeTdqb2FCLTJGc09icjFX
NGxCWm5NYWJELTJGempmYWMwT1ZzWm1oaml0SDFQOWgxV2p1UzFYUmpzN0JLb3U4cmphU1ZIeTB1
TDVvcEFVcktQUnB3OWpkTHk5RHBhLTJGeFJlQ2NFeE5CYVFvRnVTNUdadHZtd2xjVWVVa2dyNC0y
QlFKVC0yRnBxeUhsemNubkpDeWhyQ2RCcms4dmpQdG9uRlBKSjBXdzQwNGtjNlBObk5lOC0yQjV1
cW94SkRjd0hySTQ1cmI1dG1rc21vTGREbzBsdExMRTNQdW8zRXJxSFFPeTJGQ2hPNTFXRlRGUURv
SHd2QUxVSXBIMmpjRk56SEpwME5TOXowTTZULTJGMW4zWGRVaXFCczgwVlFxZnlnS29nLTNELTNE
ICkgLSBVbnN1YnNjcmliZSBQcmVmZXJlbmNlcyAoIGh0dHBzOi8vdTQ1NDYwMjQzLmN0LnNlbmRn
cmlkLm5ldC93Zi91bnN1YnNjcmliZT91cG49dTAwMS5YaW9iRkZHeUVkdUR6aTVqLTJGVnAxNUEx
YmxuSTdsRWd0MGtVMVVKVFpYWnl5N2YzSEN5QzlxOWpKdG9PZ21SLTJCUUU1UlFabXZCU2R0UXZV
cFI0LTJGYkpBVzNZT1FQazQtMkJNSHFFZGVmWlExVVRsRzVRREV5d3hKek5vM0c5SmZ0QnRwaWMw
YjVYT2dLTEJHWFVIcUplM05ibXlTSUZaT1JYWGtMM0VFMWF2d3ZMVWxRVDdKSEktMkZSUzFUSE9P
RzBNYXlucmxzZGc3UmNVdVhSNTJoS2lHSXV3c3J4bmFCQUQxcC0yRk1rd283dk1MNW1RN1NraEgy
WURoWG1Henp4dXhXLTJCdFdRUzN3Tm5OR0g5LTJGbXoxQU1hQWI1TFVzcFpja0JYWUZibkhOZmdz
Mmc3TUhTc2Q2VVVxcEF2LTJGQ3UwTkNOOE03ZkxsNHE1SExRVENURWNTTWg0bWhzLTJGZGhuMHpt
NDgtMkJOLTJCUjBwcnBmNlJKZ2NCOVV6LTJGSFdYVWhmZ2hCTVhqNE45UzM5SzJtOHVxaHlKbHhn
OG4tMkY3YTFCLTJGV01wOC0yQjRkMTVObkhadVNDTm9LZVV1SlB5d1M5OFFISkVJaEVGcVdwWEFE
OFN2V2xjM0xuUHZjakluSGZ2cWNQWjZIUnFWTUVuQW96aDJRN3MxNjdFeWZnMXRqRGw4bEZhQ244
YUVKT1k5dTRlSUZZTXhiSVpCYmFGQlJDbjdmUEJmdi0yQmNYbzlLaHkzbjBNekNtem9wa3d4cFZv
M0dLa3U0TlpreEdXUllMbnRBTGVUTFllSEJwNnBIdk5jZVNpcVdJWHdZSURLY053cVlaLTJGRFRP
YUlFeGtIS3lSMG5pNnV5RFl1OEJKWHk3am9hQi0yRnNPYnIxVzRsQlpuTWFiRC0yRnpqZmFjME9W
c1ptaGppdEgxUDloMVdqdVMxWFJqczdCS291OHJqYVNWSHkwdUw1b3BBVXJLUFJwdzlqZEx5OURw
YS0yRnhSZUNjRXhOQmFRb0Z1UzVHWnR2bXdsY1VlVWtncjQtMkJRSlQtMkZwcXlIbHpjbm5KQ3lo
ckNkQnJrOHZqUHRvbkZQSkowV3c0MDRrYzZQTm5OZTgtMkI1dXFveEpEY3dIckk0NXJiNXRta3Nt
b0xkRG8wbHRMTEUzUHVvM0VycUhRT3kyRkNoTzUxV0ZURlFEb0h3dkFMVUlwSDJqY0ZOekhKcDBO
Uzl6ME02VC0yRjFuM1hkVWlxQnM4MFZRcWZ5Z0tvZy0zRC0zRCApCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK

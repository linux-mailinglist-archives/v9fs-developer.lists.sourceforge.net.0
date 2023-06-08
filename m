Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA51728955
	for <lists+v9fs-developer@lfdr.de>; Thu,  8 Jun 2023 22:25:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1q7MCW-0006VQ-H3;
	Thu, 08 Jun 2023 20:25:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <info-emagazine-rakuten.co.jp@518blp.cn>)
 id 1q7MCT-0006VJ-4T for v9fs-developer@lists.sourceforge.net;
 Thu, 08 Jun 2023 20:25:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z6VrbQ42KiyZPwvqifyiQAU7dPDKSOUUO8mBKSMZGog=; b=IzbJ0NOtlpn19M+wEeDqVG57an
 YueGGGYbEwi13qeLcLIKgIEwdbccmphkCRZ6g+OThOkGKqaHPv/x+FUwh/g/OqJt/7s+RIJjSdG5A
 cRMs+Jtf3cqETtUCR7fZepwd3sfO9VAuSXhGn2SDEagTl4/+nMcNFCaQdOkj8oWDph3Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Z6VrbQ42KiyZPwvqifyiQAU7dPDKSOUUO8mBKSMZGog=; b=h
 3rp6lawRGvi0dL785HW8v+PnJJuwdylTXZqFXvMub3trp2HpdCak4Wiyxw7RohvPm2Hvl1Y5PgHVc
 Mvbdg06rmYXjHlBA5J0K+VeL7ZYKbC1jZE4K+6HQlYW4BLDKJGSqpPPVxgFze/psAlGTZchvZTxTV
 dQkUGvEoZy8h3vzw=;
Received: from [172.245.112.18] (helo=518blp.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q7MCL-00021u-Sc for v9fs-developer@lists.sourceforge.net;
 Thu, 08 Jun 2023 20:25:41 +0000
Received: from rksjrzvjfu (aristeu10.bluetrimmer.com [192.227.134.10])
 by 518blp.cn (Postfix) with ESMTPA id 80F7821206
 for <v9fs-developer@lists.sourceforge.net>;
 Fri,  9 Jun 2023 04:07:54 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 518blp.cn 80F7821206
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=518blp.cn;
 s=default; t=1686254875;
 bh=Z6VrbQ42KiyZPwvqifyiQAU7dPDKSOUUO8mBKSMZGog=;
 h=From:To:Subject:Date:From;
 b=lR/9i3Mm6oIKpTFxVf9ScgFNI8M9LzyrQyg8kUWhtgkFaGQD/8UBD2ClTjoMkMavU
 OX7p1WEZEz1CWwCsoT2wMfxnYAWYkcon2O/ldtVETpy1NrS49k0JyUK+vE3F9fpQc6
 xhnkLTVhF3Ci/3MdOOmMThieuZYLrkiLYmJZ5rPA=
Message-ID: <9B963B59839633BFF8622C1E04EB1134@rksjrzvjfu>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Fri, 9 Jun 2023 05:07:41 +0900
MIME-Version: 1.0
X-Priority: 3
X-Mailer: Supmailer 38.1.1
X-Spam-Score: 5.4 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  楽天会員ニュース /* CLIENT-SPECIFIC STYLES */ #outlook
    a { padding: 0; } /* Force Outlook to provide a "view in browser" message
    */ .ReadMsgBody { width: 100%; } .ExternalClass { width: 100%; [...] 
 
 Content analysis details:   (5.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_SORBS_DUL      RBL: SORBS: sent directly from dynamic IP
                             address
                             [172.245.112.18 listed in dnsbl.sorbs.net]
  2.5 URIBL_DBL_PHISH        Contains a Phishing URL listed in the Spamhaus
                             DBL blocklist
                             [URIs: 518blp.cn]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  1.5 MPART_ALT_DIFF_COUNT   BODY: HTML and text parts are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_IMAGE_RATIO_04    BODY: HTML has a low ratio of text to image
                             area
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  0.3 HTML_FONT_TINY_NORDNS  Font too small to read, no rDNS
  0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1q7MCL-00021u-Sc
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5qW95aSp44Kw44Or44O844OX44Gu5Lya5ZOh?=
	=?utf-8?b?5oOF5aCx56K66KqN44Gu44GK6aGY44GE77yIMjAyMy8wNi8wOe+8iQ==?=
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
From: =?utf-8?B?5qW95aSp5Lya5ZOh44OL44Ol44O844K5?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?utf-8?B?5qW95aSp5Lya5ZOh44OL44Ol44O844K5?=
 <info-emagazine-rakuten.co.jp@518blp.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

5qW95aSp5Lya5ZOh44OL44Ol44O844K5IC8qIENMSUVOVC1TUEVDSUZJQyBTVFlMRVMgKi8gI291
dGxvb2sgYSB7IHBhZGRpbmc6IDA7IH0gLyogRm9yY2UgT3V0bG9vayB0byBwcm92aWRlIGEgInZp
ZXcgaW4gYnJvd3NlciIgbWVzc2FnZSAqLyAuUmVhZE1zZ0JvZHkgeyB3aWR0aDogMTAwJTsgfSAu
RXh0ZXJuYWxDbGFzcyB7IHdpZHRoOiAxMDAlOyB9IC8qIEZvcmNlIEhvdG1haWwgdG8gZGlzcGxh
eSBlbWFpbHMgYXQgZnVsbCB3aWR0aCAqLyAuRXh0ZXJuYWxDbGFzcywgLkV4dGVybmFsQ2xhc3Mg
cCwgLkV4dGVybmFsQ2xhc3Mgc3BhbiwgLkV4dGVybmFsQ2xhc3MgZm9udCwgLkV4dGVybmFsQ2xh
c3MgdGQsIC5FeHRlcm5hbENsYXNzIGRpdiB7IGxpbmUtaGVpZ2h0OiAxMDAlOyB9IC8qIEZvcmNl
IEhvdG1haWwgdG8gZGlzcGxheSBub3JtYWwgbGluZSBzcGFjaW5nICovIGJvZHksIHRhYmxlLCB0
ZCwgYSB7IC13ZWJraXQtdGV4dC1zaXplLWFkanVzdDogMTAwJTsgLW1zLXRleHQtc2l6ZS1hZGp1
c3Q6IDEwMCU7IH0gLyogUHJldmVudCBXZWJLaXQgYW5kIFdpbmRvd3MgbW9iaWxlIGNoYW5naW5n
IGRlZmF1bHQgdGV4dCBzaXplcyAqLyB0YWJsZSwgdGQgeyBtc28tdGFibGUtbHNwYWNlOiAwcHQ7
IG1zby10YWJsZS1yc3BhY2U6IDBwdDsgfSAvKiBSZW1vdmUgc3BhY2luZyBiZXR3ZWVuIHRhYmxl
cyBpbiBPdXRsb29rIDIwMDcgYW5kIHVwICovIHRhYmxlLCB0ZCB7IG1zby1saW5lLWhlaWdodC1y
dWxlOiBleGFjdGx5OyB9IC8qIGZvciBsaW5lLWhlaWdodCBpbiBPdXRsb29rIDIwMTErICovIGlt
ZyB7IC1tcy1pbnRlcnBvbGF0aW9uLW1vZGU6IGJpY3ViaWM7IH0gLyogQWxsb3cgc21vb3RoZXIg
cmVuZGVyaW5nIG9mIHJlc2l6ZWQgaW1hZ2UgaW4gSW50ZXJuZXQgRXhwbG9yZXIgKi8gLyogUkVT
RVQgU1RZTEVTICovIGJvZHkgeyBtYXJnaW46IDA7IHBhZGRpbmc6IDA7IH0gaW1nIHsgYm9yZGVy
OiAwOyBsaW5lLWhlaWdodDogMTAwJTsgb3V0bGluZTogbm9uZTsgdGV4dC1kZWNvcmF0aW9uOiBu
b25lOyB9IHRhYmxlIHsgYm9yZGVyLWNvbGxhcHNlOiBjb2xsYXBzZSAhaW1wb3J0YW50OyB9IGJv
ZHkgeyBoZWlnaHQ6IDEwMCUgIWltcG9ydGFudDsgbWFyZ2luOiAwOyBwYWRkaW5nOiAwOyB3aWR0
aDogMTAwJSAhaW1wb3J0YW50OyB3b3JkLWJyZWFrOiBicmVhay1hbGw7IHdvcmQtd3JhcDogYnJl
YWstd29yZDsgZm9udC1mYW1pbHk6ICdOb3RvIFNhbnMgQ0pLIEpQIFJlZ3VsYXInLCAnSGlyYWdp
bm8gS2FrdSBHb3RoaWMgUHJvTicsICdNZWlyeW8nLCAnT3Nha2EnLCBhcmlhbCwgJ0x1Y2lkYSBH
cmFuZGUnLCBzYW5zLXNlcmlmICFpbXBvcnRhbnQ7IH0gQG1lZGlhIHNjcmVlbiBhbmQgKG1pbi13
aWR0aDogMXB4KSBhbmQgKG1heC13aWR0aDogNjM5cHgpIHsgdGFibGVbY2xhc3M9IndyYXBwZXIi
XSB7IHdpZHRoOiAxMDAlICFpbXBvcnRhbnQ7IH0gdGFibGVbY2xhc3M9IndyYXBwZXJfYWQiXSB7
IHdpZHRoOiAxMDAlICFpbXBvcnRhbnQ7IH0gdGFibGVbY2xhc3M9IndyYXBwZXJfY29tbW9uIl0g
eyB3aWR0aDogMTAwJSAhaW1wb3J0YW50OyB9IHRhYmxlW2NsYXNzPSJyZXNwb25zaXZlLXRhYmxl
Il0geyB3aWR0aDogMTAwJSAhaW1wb3J0YW50OyB9IHRhYmxlW2NsYXNzPSJyZXNwb25zaXZlLXRh
YmxlMyJdIHsgd2lkdGg6IDEwMCUgIWltcG9ydGFudDsgfSB0ZFtjbGFzcz0iYW5kcm9pZC1kdW1t
eSJdIHsgbWluLXdpZHRoOiAwcHggIWltcG9ydGFudDsgfSBpbWdbY2xhc3M9ImltZy1tYXgiXSB7
IG1heC13aWR0aDogMTAwJSAhaW1wb3J0YW50OyBoZWlnaHQ6IGF1dG8gIWltcG9ydGFudDsgfSBp
bWdbY2xhc3M9ImltZy0zMDAiXSB7IHdpZHRoOiAzMDBweCAhaW1wb3J0YW50OyBoZWlnaHQ6IGF1
dG8gIWltcG9ydGFudDsgfSB0ZFtjbGFzcz0iaW1nLW1heCJdIGltZyB7IG1heC13aWR0aDogMTAw
JSAhaW1wb3J0YW50OyBoZWlnaHQ6IGF1dG8gIWltcG9ydGFudDsgfSB0ZFtjbGFzcz0ibW9iaWxl
LWhpZGUiXSB7IGRpc3BsYXk6IG5vbmUgIWltcG9ydGFudDsgfSBzcGFuW2NsYXNzPSJtb2JpbGUt
YmxvY2siXSB7IGRpc3BsYXk6IGJsb2NrICFpbXBvcnRhbnQ7IH0gaW1nW2NsYXNzPSJtb2JpbGUt
aGlkZSJdIHsgZGlzcGxheTogbm9uZSAhaW1wb3J0YW50OyB9IHNwYW5bY2xhc3M9Im1vYmlsZS1o
aWRlIl0geyBkaXNwbGF5OiBub25lICFpbXBvcnRhbnQ7IH0gdGRbY2xhc3M9Im1vYmlsZS1vbjEy
Il0geyBkaXNwbGF5OiB0YWJsZS1jZWxsICFpbXBvcnRhbnQ7IGZvbnQtc2l6ZTogMTJweCAhaW1w
b3J0YW50OyBsaW5lLWhlaWdodDogMThweCAhaW1wb3J0YW50OyBtYXgtaGVpZ2h0OiBub25lICFp
bXBvcnRhbnQ7IH0gdGRbY2xhc3M9Im1vYmlsZS1mb250MjAiXSB7IGZvbnQtc2l6ZTogMjBweCAh
aW1wb3J0YW50OyB9IHRkW2NsYXNzPSJtb2JpbGUtZm9udDE4Il0geyBmb250LXNpemU6IDE4cHgg
IWltcG9ydGFudDsgfSB0ZFtjbGFzcz0ibW9iaWxlLWZvbnQxNiJdIHsgZm9udC1zaXplOiAxNnB4
ICFpbXBvcnRhbnQ7IH0gdGRbY2xhc3M9Im1vYmlsZS1mb250MTQiXSB7IGZvbnQtc2l6ZTogMTRw
eCAhaW1wb3J0YW50OyB9IHRkW2NsYXNzPSJtb2JpbGUtZm9udDEyIl0geyBmb250LXNpemU6IDEy
cHggIWltcG9ydGFudDsgfSB0ZFtjbGFzcz0ibW9iaWxlLXBhQjUiXSB7IHBhZGRpbmctYm90dG9t
OiA1cHggIWltcG9ydGFudDsgfSB0ZFtjbGFzcz0ibW9iaWxlLXBhTDAiXSB7IHBhZGRpbmctbGVm
dDogMHB4ICFpbXBvcnRhbnQ7IH0gdGRbY2xhc3M9Im1vYmlsZS1wYVIwIl0geyBwYWRkaW5nLXJp
Z2h0OiAwcHggIWltcG9ydGFudDsgfSB0ZFtjbGFzcz0ibW9iaWxlLXBhUjEwIl0geyBwYWRkaW5n
LXJpZ2h0OiAwcHggIWltcG9ydGFudDsgfSB0ZFtjbGFzcz0ibW9iaWxlLXBhTFIxMCJdIHsgcGFk
ZGluZy1sZWZ0OiAwcHggIWltcG9ydGFudDsgcGFkZGluZy1yaWdodDogMHB4ICFpbXBvcnRhbnQ7
IH0gdGFibGVbY2xhc3M9Im1vYmlsZS13aWR0aDMwMCJdIHsgd2lkdGg6IDMwMHB4ICFpbXBvcnRh
bnQ7IH0gdGRbY2xhc3M9Im1vYmlsZS13aWR0aDk2Il0geyB3aWR0aDogOTZweCAhaW1wb3J0YW50
OyB9IGltZ1tjbGFzcz0ibW9iaWxlLW1heDk2Il0geyBtYXgtd2lkdGg6IDk2cHggIWltcG9ydGFu
dDsgbWF4LWhlaWdodDogOTZweCAhaW1wb3J0YW50OyB9IHRkW2NsYXNzPSJtb2JpbGUtdGFMIl0g
eyB0ZXh0LWFsaWduOiBsZWZ0ICFpbXBvcnRhbnQ7IH0gdGRbY2xhc3M9Im1vYmlsZS10YUMiXSB7
IHRleHQtYWxpZ246IGNlbnRlciAhaW1wb3J0YW50OyB9IHRkW2NsYXNzPSJtb2JpbGUtdGFSIl0g
eyB0ZXh0LWFsaWduOiByaWdodCAhaW1wb3J0YW50OyB9IHRkW2NsYXNzPSJzZXBhcmF0b3IiXSB7
IHBhZGRpbmctdG9wOiAyMHB4ICFpbXBvcnRhbnQ7IH0gfSBAbWVkaWEgc2NyZWVuIGFuZCAobWlu
LXdpZHRoOiAxcHgpIGFuZCAobWF4LXdpZHRoOiA2MzlweCkgey5mczIwIHsgZm9udC1zaXplOjE0
cHggIWltcG9ydGFudDt9fSANCg0K5qW95aSp44Kw44Or44O844OX44Gu44K144Kk44OI44Gr44Gk
44GE44Gm44Ki44Oz44Kx44O844OI44Gr44GU5Y2U5Yqb44KS44GK6aGY44GE44GX44G+44GZDQoN
Cg0KDQogDQoNCg0KDQoNCg0K5Zue562U57eg5YiH77yaMjAyM+W5tDbmnIgxMuaXpe+8iOaciO+8
iTIzOjU5DQoNCg0KDQoNCuOBk+OBruODoeODvOODq+OCkuawl+OBq+WFpeOBo+OBpuOBhOOBn+OB
oOOBkeOBvuOBl+OBn+OBi++8nw0KDQoNCuawl+OBq+WFpeOCieOBquOBhOawl+OBq+WFpeOBo+OB
nw0KDQoNCg0KDQoyMDIz5bm0MDbmnIgwN+aXpeaZgueCueOBp+alveWkqeS8muWToeOBq+eZu+mM
suOBleOCjOOBpuOBhOOCi+aWueOBq+OBiumAgeOCiuOBl+OBpuOBhOOBvuOBmeOAgg0K4oC744GT
44Gu44Oh44O844Or44Gr6KiY6LyJ44GX44Gm44GE44KL5YaF5a6544GvMjAyM+W5tDA25pyIMDnm
l6XmmYLngrnjga7mg4XloLHjgpLjgoLjgajjgavntLnku4vjgZfjgabjgYTjgb7jgZnjgILjg6Hj
g7zjg6vjgpLlj5fjgZHlj5bjgaPjgZ/mmYLngrnjgafllYblk4Hjga7kvqHmoLzlpInmm7TjgoTl
o7LjgorliIfjgozjgIHkvIHnlLvjgYzntYLkuobjgajjgarjgaPjgabjgYTjgovlj6/og73mgKfj
goLjgZTjgZbjgYTjgb7jgZnjga7jgafjgZTkuobmib/jgY/jgaDjgZXjgYTjgIIgDQoNCg0K4pag
IOacrOODoeODvOODq+OBp+OBr+S8muWToemZkOWumuOBruOCreODo+ODs+ODmuODvOODs+OChOal
veWkqeOCsOODq+ODvOODl+OAgeOBvuOBn+OBr+OBneOBruS7luOBruS8gealreOBruOBiuW+l+OB
quaDheWgseetieOCkuOBiumAgeOCiuOBl+OBpuOBhOOBvuOBmeOAguS4jeimgeOBquaWueOBr+mF
jeS/oeWBnOatouOBi+OCieOBiuaJi+e2muOBjeOBj+OBoOOBleOBhOOAgiANCg0KDQrilqAg6YWN
5L+h5YGc5q2i44O76YWN5L+h5YWI44Gu5aSJ5pu044Gr44Gk44GE44GmDQrih5Ig6YWN5L+h5YGc
5q2i44O744O744CMIOODoeODq+ODnuOCrOOBrueUs+i+vOODu+WkieabtOODu+WBnOatoiDjgI3j
gojjgorooYzjgaPjgabjgY/jgaDjgZXjgYTjgIINCuKHkiDphY3kv6HlhYjjga7lpInmm7Tjg7vj
g7vjg7sg5Lya5ZOh5oOF5aCx44Gu566h55CG44OI44OD44OXIOOBq+ODreOCsOOCpOODs+OBl+OB
puOAjOacrOS6uumAo+e1oeWFiOOBrueiuuiqjeODu+WkieabtOOAjeOBi+OCieOAgeS8muWToeaD
heWgseOCkuWkieabtOOBl+OBpuOBj+OBoOOBleOBhOOAgg0K4oC76YWN5L+h5YGc5q2i5b6M44Gr
5qW95aSp5Lya5ZOh5oOF5aCx44Gu44Oh44O844Or44Ki44OJ44Os44K544KS5aSJ5pu044GX44Gf
5aC05ZCI44Gv44CB5aSJ5pu05b6M44Gu44Ki44OJ44Os44K544G46YWN5L+h44GV44KM44G+44GZ
44Gu44Gn44CB44CM5aSJ5pu05b6M44Gu44Oh44O844Or44Ki44OJ44Os44K544CN44Gn44CB5pS5
44KB44Gm6YWN5L+h5YGc5q2i44KS6KGM44GG5b+F6KaB44GM44GC44KK44G+44GZ44CCIA0KDQri
lqAg44GT44Gu44Oh44O844Or44Gv6YCB5L+h5bCC55So44Oh44O844Or44Ki44OJ44Os44K544GL
44KJ6YWN5L+h44GV44KM44Gm44GE44G+44GZ44CC44GU6L+U5L+h44GE44Gf44Gg44GE44Gm44KC
44GK562U44GI44Gn44GN44G+44Gb44KT44Gu44Gn44GU5LqG5om/44GP44Gg44GV44GE44CCIA0K
DQoNCuWAi+S6uuaDheWgseS/neitt+aWuemHnSDilIIg44OY44Or44OX44O75ZWP44GE5ZCI44KP
44GbIA0KDQoNCiANCg0KDQrnmbrooYzlhYPvvJog5qW95aSp44Kw44Or44O844OX5qCq5byP5Lya
56S+IA0KKGMpIFJha3V0ZW4gR3JvdXAsIEluYy4gDQoNCg0KDQoNCg0KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcg
bGlzdApWOWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK

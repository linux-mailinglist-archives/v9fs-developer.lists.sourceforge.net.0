Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A24A2EB9E3
	for <lists+v9fs-developer@lfdr.de>; Wed,  6 Jan 2021 07:13:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1kx24Q-0003Or-LC; Wed, 06 Jan 2021 06:13:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <admin@suemall.cn>) id 1kx24O-0003Oj-Tv
 for v9fs-developer@lists.sourceforge.net; Wed, 06 Jan 2021 06:13:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=axLLvNmAF1kw3VreRpSZdrLN+dxjP1Mw32FRn9iQCvw=; b=KtsJtpfAmjKUl9iA4JGAxo87fa
 EPvM/FcmfhmxN7A0o7xGFpO0VCxtUHL6ddHWc34FRqWlxT5vERpwDZCczlOr9jQQG0VtDZWmk5k0+
 EUI7t0fn8nPxdYiz9bed62ayt8vVV9ylfcWKaD68+dWFCXGIoNChS+HUYiv9r8Qw5JM4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=axLLvNmAF1kw3VreRpSZdrLN+dxjP1Mw32FRn9iQCvw=; b=b
 rUHB5ZmZQj2Jkmbb/5kcdC4cN9IuD/E14IO7pR3DxlzwqDocrkP+exJU5uQ6WbkyWBq/H1zYVzHF6
 WVFPWAPJhoy/79BwRSuOTDdNfeFXpTImLXnJoZ2sFZL+YNYM4O+Ai3YCXrrEBZFU+Fpl4FNAtBiW0
 UPi/0H5hXAQIhMqs=;
Received: from [180.215.226.213] (helo=suemall.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kx24H-002d3j-4U
 for v9fs-developer@lists.sourceforge.net; Wed, 06 Jan 2021 06:13:20 +0000
Message-ID: <20210106141306432122@suemall.cn>
From: =?utf-8?B?VUPjgqvjg7zjg4k=?= <uccard.co.jp>
To: <v9fs-developer@lists.sourceforge.net>
Date: Wed, 6 Jan 2021 14:12:57 +0800
MIME-Version: 1.0
X-Spam-Score: 4.7 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: 41.216.189.242]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
 0.0 NORMAL_HTTP_TO_IP      URI: URI host has a public dotted-decimal IPv4
 address
 1.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.0 PDS_SHORT_SPOOFED_URL  HTML message short and T_SPOOFED_URL (S_U_FP)
 0.7 PDS_NO_FULL_NAME_SPOOFED_URL HTML message short, T_SPOOFED_URL and
 T_KHOP_NO_FULL_NAME
X-Headers-End: 1kx24H-002d3j-4U
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?77yc6YeN6KaB77ye44CQVUPjgqvjg7zjg4k=?=
 =?utf-8?b?44CR44GU5Yip55So56K66KqN44Gu44GK6aGY44GE?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

VUPjgqvkuIDjg4njgqLjg4jjg6bkuIAt44ON44OD44OIIeODgOOCpOODq+WkluOCkuOBk37liKnn
lKjjgYTjgZ/jgaDjgY3jgIHoqqDjgavjgYLjgorjgYzjgajjgYbjgZbjgYTjgb7jgZkNClVDIENB
UkTjgqLjg4Pjg4jjg6bkuIDjg43jg4Pjg4ggIQ0K5pys44Oh5LiA44Or44Gv44OJ44Oh44Kk44Oz
44Gu6YGL55SoKOODoeS4gOODq+mAgeWPl+S/oeOChOODm+S4gOODoOODmeS4gOOCuOOBruihqOek
uinjgavplqLjgo/jgovph43opoHjgarpgJrnn6Xjgajjgarjgorjgb7jgZnjgIINCuOBhOOBpOOC
glVD44Kr5LiA44OJ44KS44GU5Yip55So44GX44Gf44Gg44GN44GC44KK44GM44Go44GG44GU44GW
44GE44G+44GZ44CCDQoNCuW8iuekvuOBp+OBr+OAgeOBiuWuouanmOOBq+WuieW/g+OBl+OBpuOC
q+S4gOODieOCkuOBlOWIqeeUqOOBhOOBn+OBoOOBj+OBk+OBqOOCkuebrueahOOBq+OAgQ0K56ys
5LiJ6ICF44Gr44KI44KL5LiN5q2j5L2/55So44KS6Ziy5q2i44GZ44KL44Oi44OL44K/44Oq44Oz
44Kw44KS6KGM44Gj44Gm44GE44G+44GZ44CCDQrlvZPnpL7jga7jgYLjgarjgZ/jga7jgqLjgqvj
gqbjg7Pjg4jjgavjgYrjgZfjgabmgqrmhI/jga7jgYLjgovnrKzkuInogIXjga7jg63jgrDjgqTj
g7PjgpLmpJzlh7rjgZfjgb7jgZfjgZ/jgIINCuOBquOBiuOAgeOBlOWlkee0hOOBn+OBoOOBhOOB
puOBhOOCi+OCq+S4gOODieOBq+OBpOOBhOOBpuOBr+OAgeesrOS4ieiAheOBq+OCiOOCi+S4jeat
o+S9v+eUqOOBrg0K5Y+v6IO95oCn44GM44GU44GW44GE44G+44GZ44Gu44Gn44CB44Kr5LiA44OJ
44Gu44GU5Yip55So44KS5LiA5pmC55qE44Gr5YGc5q2i44GV44Gb44Gm44GE44Gf44Gg44GE44Gm
44GE44KL44CBDQrjgoLjgZfjgY/jga/ku4rlvozlgZzmraLjgZXjgZvjgabjgYTjgZ/jgaDjgY/l
oLTlkIjjgYzjgZTjgZbjgYTjgb7jgZnjgIINCuOBlOS4jeS+v+OBqOOBlOW/g+mFjeOCkuOBiuOB
i+OBkeOBl+OBvuOBl+OBpuiqoOOBq+eUs+OBl+ios+OBlOOBluOBhOOBvuOBm+OCk+OBjOOAgQ0K
5L2V44Go44Ge44GU55CG6Kej6LOc44KK44Gf44GP44GK6aGY44GX55Sz44GX44GC44GS44G+44GZ
44CCDQp1Y+OCq+S4gOODieS8muWToeOCteS4gOODk+OCueOBuOOBruaDheWgseWGjeeiuuiqjeOC
kuaXqeaApeOBq+OBiumhmOOBhOOBl+OBvuOBmeOAgg0K44Ki44OD44OI44Ol5LiA44ON44OD44OI
44Ot44Kw44Kk44OzDQrilqAg5rOo5oSP5LqL6aCFDQrigLvjgZPjga7jg6HkuIDjg6vjga9OZXTj
gqLjg7PjgrXkuIDjgYvjgonoh6rli5XphY3kv6HjgZfjgabjgYrjgorjgb7jgZnjgIINCuKAu+OB
tuOBk+OBruODoeS4gOODq+OBp+OBr+OAgeesrOS4ieiAheOBq+OCiOOCi+S4jeato+S9v+eUqOOB
ruWPr+iDveaAp+OCkuaknOefpeOBl+OBvuOBl+OBn+OBruOBp+OAgeOBlOmAo+e1oeOCkuW3ruOB
l+OBguOBkuOBvuOBl+OBn+OAgg0K4oC75pys44Oh5LiA44Or44Gr44GU6L+U5L+h44GX44Gf44Gg
44GN44G+44GX44Gm44KC44CB44GU6LOq5ZWPP+OBlOS+nemgvOOBquOBqeOBq+OBiuetlOOBiOOB
p+OBjeOBvuOBm+OCk+OBruOBp+OAgeOBguOCieOBi+OBmOOCgeOBlOS6huaJv+OBj+OBoOOBleOB
hOOAguKAu+ODoeS4gOODq+OBq+mWouOBmeOCi+WQhOeoruOBiuaJi+e2muOBjeaWueazleOBq+OB
pOOBjeOBvuOBl+OBpuOBr+OAgeS7peS4i+OCkuOBlOeiuuiqjeOBj+OBoOOBleOBhOOAgg0KaHR0
cDovL3d3dzIudWNjYXJkLmNvLmpwL2F0dS9tYWlsX3RvaWF3YXNlLmh0bWwKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=

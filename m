Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3541FCE1
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 02:39:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zVYYNNpoOAV0s0exhiYj/8F9I6KwLIrquTBfHA4ruTk=; b=fazW+cXI/1CUWh
	Xoh1zueTlvQRHAhYC5BBIiCubdaTVeNmy03zk1xxuiKcojMMSEJnepD6qrEaLXV4/LJy2ybU8Ewf4
	eDJF6RnU6k91fEpLyQV+JVyymBEnCzYPVemD0KYwNHJWyCTEPfgPaoTKlIKLL+luffw+xzAFkH3e+
	P6wAytaPiqF2YwMH8iRLAu3S+hnYiuFFh419nlsGhxZ6EjULZJVS0fLOlM++ubCdtP+ZMZUudDRhH
	mKOPtPs6bW/yZkYAVH7Judbhms7CFPf5vsio6dC7NNOTEB8J567f0RV/zrYrrDmReMtBU0GdwZiR2
	x1P7Phx0fZ2cqexhevZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR4Qu-0006Dy-Gi; Thu, 16 May 2019 00:39:40 +0000
Received: from salida.aumenta.com.mx ([209.139.208.81])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR4Qp-0006Dd-Pn
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 00:39:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by salida.aumenta.com.mx (Postfix) with ESMTP id 197E110008481
 for <linux-nvme@lists.infradead.org>; Wed, 15 May 2019 18:20:05 -0600 (MDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=chavero.com.mx;
 s=mail; t=1557966005;
 bh=aGz40cBrfhmnTSwPZE73NNJvcPnYj1ybskS5+3AkCqc=;
 h=Subject:From:To:Date;
 b=aoD4GZyY6WnSYmRSfU1D+MRyy9iZAZwMIzVjLvRftom2qjoMwzUQcpqnxTDMwQO8s
 KMuYEioJt/RP+F93XC0qbrTWbVvUrNeG9hiyz1ot54Kz1FJVCMEgkpx/oPfqY2V7mY
 T3AkuT3O4ZwpafJoJ+t7N+7mxzerboBGi6UcLoXs=
X-Virus-Scanned: amavisd-new at aumenta.com.mx
Received: from salida.aumenta.com.mx ([127.0.0.1])
 by localhost (trefilp.aumenta.com.mx [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id ddBFEY9wcS50 for <linux-nvme@lists.infradead.org>;
 Wed, 15 May 2019 18:19:42 -0600 (MDT)
Received: from airsk8 (unknown [189.146.226.233])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: ichavero@seispistos.com.mx)
 by salida.aumenta.com.mx (Postfix) with ESMTPSA id F382710008480
 for <linux-nvme@lists.infradead.org>; Wed, 15 May 2019 18:19:41 -0600 (MDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=chavero.com.mx;
 s=mail; t=1557965982;
 bh=aGz40cBrfhmnTSwPZE73NNJvcPnYj1ybskS5+3AkCqc=;
 h=Subject:From:To:Date;
 b=CE81E6laTVlIYnQaN+jD6bjnkq2LSQ9PJ75Pz5UGuHzEnFOtnd1UqxjC/zNqFLUly
 S2IgDxQ8BE/9bTV6R1gKZc6uw1Jb49fLBT169KfrqOz/oB87N147EhyGmbEnEHWjB6
 yAEuAZB79nOJQROKB03GpE40SYdhgnfcv5tTfCOw=
Message-ID: <4a0dda5365f24e7223d1672233d7f1ac64640d31.camel@chavero.com.mx>
Subject: nvme drive kernel 5.0 problem
From: =?ISO-8859-1?Q?Iv=E1n?= Chavero <ichavero@chavero.com.mx>
To: linux-nvme@lists.infradead.org
Date: Wed, 15 May 2019 19:20:43 -0500
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_173935_864587_8ADB57BE 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGVsbG8sCgpJIGhhdmUgYSBtYWNib29rIGFpciB3aXRoIGEgbnZtZSBkcml2ZSBhbmQgRmVkb3Jh
IGluc3RhbGxlZC4gClNpbmNlIGtlcm5lbCA0LjE2LjExIGl0IHdvdWxkbid0IGJvb3QgcHJvcGVy
bHksIG5vdyB3aXRoIGtlcm5lbCA1LjAKSSBzdGFydGVkIHRhbXBlcmluZyB3aXRoIHRoZSBudm1l
IGRyaXZlciBzZXR0aW5ncyBhbmQgbWFuYWdlZCB0byBib290CmJ1dCB0aGVyZSdzIGEgcHJvYmxl
bSB3aXRoIHRoaXMgc2V0dGluZ3MsIHRoZSBkcml2ZXIgc2hvd3MgdGhpcyBlcnJvcnM6Cgpwcmlu
dF9yZXFfZXJyb3I6IG9wZXJhdGlvbiBub3Qgc3VwcG9ydGVkIGVycm9yLCBkZXYgbnZtZTAxLi4u
CgpBbmQgdGhlbiB0aGUgZG0gZHJpdmVyIGhhcyBwcm9ibGVtcyB3cml0aW5nIHRvIHRoZSBkZXZp
Y2UgYW5kIHRoZSBleHQ0CmZpbGVzeXN0ZW0KcmVtb3VudHMgdGhlIHJvb3QgcGFydGl0aW9uIGFz
IHJlYWQgb25seSB3aGljaCBpcyBubyBnb29kLgoKVGhlIG90aGVyIHBhcnRpdGlvbnMgZW5kIHVw
IGJlaW5nIG1vdW50ZWQgcHJvcGVybHkgYW5kIGFyZSB3cml0YWJsZSBzbwppIGhhdmUgdGhlIGh5
cG90ZXNpcyAKdGhhdCB0aGVyZSdzIGEgdGltaW5nL2luaXRpYWxpemF0aW9uL3F1ZXVlIHByb2Js
ZW0gd2hpbGUgYm9vdGluZyB3aXRoCnRoZSBkcml2ZXIgdGhhdCBjYXVzZXMKcHJvYmxlbXMgd3Jp
dGluZyB0byB0aGUgZGV2aWNlLiAKCkknbSBub3QgdmVyeSBmYW1pbGlhciB3aXRoIHRoZSBkcml2
ZXIgc28gaSdtIG5vdCBzdXJlIGlmIHRoZSBwcm9ibGVtIGlzCm9uIG15IHNldHRpbmdzIG9yCnRo
ZXJlJ3MgYSBwcm9ibGVtIHdpdGggdGhlIGRyaXZlciBpbiBrZXJuZWwgNS4wLgoKVGhpcyBhcmUg
dGhlIHNldHRpbmdzIGknbSB1c2luZzoKb3B0aW9ucyAka2VybmVsb3B0cyBudm1lLnBvbGxfcXVl
dWVzPTIgbnZtZS5pb19xdWV1ZV9kZXB0aD0yCm52bWUubWF4X2hvc3RfbWVtX3NpemVfbWI9MTI4
IG52bWUuCnNnbF90aHJlc2hvbGQ9MzI3NjggbnZtZS51c2VfY21iX3NxZXM9WQpudm1lX2NvcmUu
ZGVmYXVsdF9wc19tYXhfbGF0ZW5jeV91cz0xMDAwMDAgbnZtZV9jb3JlLmZvcgpjZV9hcHN0PVkg
bnZtZV9jb3JlLmlvX3RpbWVvdXQ9MzAgbnZtZV9jb3JlLm1heF9yZXRyaWVzPTUKbnZtZV9jb3Jl
LnNodXRkb3duX3RpbWVvdXQ9NSBudm1lX2NvcmUKLnN0cmVhbXM9TiAgc3lzdGVtZC51bml0PW11
bHRpLXVzZXIudGFyZ2V0IAoKVGhpcyBhcmUgdGhlIHJlbGV2YW50IGxpbmVzIGZyb20gdGhlIGRt
ZXNnIG91dHB1dDoKClsgICAgMi4zMzAwMjNdIG52bWUgbnZtZTA6IHBjaSBmdW5jdGlvbiAwMDAw
OjA0OjAwLjAKWyAgICAyLjMzMjE3OV0gbnZtZSBudm1lMDogZGV0ZWN0ZWQgQXBwbGUgTlZNZSBj
b250cm9sbGVyLCBzZXQgcXVldWUKZGVwdGg9MiB0byB3b3JrIGFyb3VuZCBjb250cm9sbGVyIHJl
c2V0cwpbICAgIDIuMzM1MDQ3XSBudm1lIG52bWUwOiAxLzAvMCBkZWZhdWx0L3JlYWQvcG9sbCBx
dWV1ZXMKWyAgICAyLjMzNjk0NF0gV0FSTklORzogQ1BVOiAzIFBJRDogNDYgYXQgZHJpdmVycy9w
Y2kvbXNpLmM6MTI3OApwY2lfaXJxX2dldF9hZmZpbml0eSsweDY2LzB4OTAKWyAgICAyLjMzODgz
NF0gTW9kdWxlcyBsaW5rZWQgaW46IG52bWUoKykgZHJtIGdoYXNoX2NsbXVsbmlfaW50ZWwoKykK
bnZtZV9jb3JlIHZpZGVvIGhpZF9hcHBsZSBmdXNlIGVjcnlwdGZzClsgICAgMi4zNDA3NDNdIENQ
VTogMyBQSUQ6IDQ2IENvbW06IGt3b3JrZXIvdTg6MSBOb3QgdGFpbnRlZCA1LjAuMTAtCjMwMC5m
YzMwLng4Nl82NCAjMQpbICAgIDIuMzQyNjgxXSBIYXJkd2FyZSBuYW1lOiBBcHBsZSBJbmMuIE1h
Y0Jvb2tBaXI3LDEvTWFjLQo5RjE4RTMxMkM1QzJCRjBCLCBCSU9TIE1CQTcxLjg4Wi4wMTY2LkIw
OS4xNTEwMjYxNDM2IDEwLzI2LzIwMTUKWyAgICAyLjM0NDY2Nl0gV29ya3F1ZXVlOiBudm1lLXJl
c2V0LXdxIG52bWVfcmVzZXRfd29yayBbbnZtZV0KWyAgICAyLjM0NjYzOV0gUklQOiAwMDEwOnBj
aV9pcnFfZ2V0X2FmZmluaXR5KzB4NjYvMHg5MApbICAgIDIuMzQ4NjE2XSBDb2RlOiAwYiAzMSBj
MCBjMyA4MyBlMiAwMiA0OCBjNyBjMCBhMCAxOCAzNyA4ZiA3NCAzMCA0OAo4YiA4NyBjMCAwMiAw
MCAwMCA0OCA4NSBjMCA3NCAwZSA0OCA4YiA1MCAzMCA0OCA4NSBkMiA3NCAwNSAzOSA3MCAxNCA3
NwowNSA8MGY+IDBiIDMxIGMwIGMzIDQ4IDYzIGY2IDQ4IDg5IGYwIDQ4IGMxIGUwIDA0IDQ4IDAx
IGM2IDQ4IDhkIDA0IGYyClsgICAgMi4zNTIzOTVdIHVzYiAxLTMuMzogbmV3IGZ1bGwtc3BlZWQg
VVNCIGRldmljZSBudW1iZXIgNiB1c2luZwp4aGNpX2hjZApbICAgIDIuMzUyNzA2XSBSU1A6IDAw
MDA6ZmZmZmI4MzcwMGUxM2NkOCBFRkxBR1M6IDAwMDEwMjQ2ClsgICAgMi4zNTY3NDddIFJBWDog
ZmZmZjlmYmJkZTEwZDU0MCBSQlg6IDAwMDAwMDAwMDAwMDAwMDAgUkNYOgowMDAwMDAwMDAwMDAw
MDA0ClsgICAgMi4zNTg3NThdIFJEWDogMDAwMDAwMDAwMDAwMDAwMCBSU0k6IDAwMDAwMDAwMDAw
MDAwMDAgUkRJOgpmZmZmOWZiYmU0ZTI4MDAwClsgICAgMi4zNjA3OTNdIFJCUDogMDAwMDAwMDAw
MDAwMDAwMCBSMDg6IDAwMDAwMDAwMDAwMDAwMDMgUjA5OgpmZmZmOWZiYmU1MzQyYTkwClsgICAg
Mi4zNjI4MDZdIFIxMDogZmZmZjlmYmJlNjQwM2IwMCBSMTE6IDAwMDAwMDAwMDAwMDAwMDAgUjEy
OgpmZmZmOWZiYmU0ZTI4MDAwClsgICAgMi4zNjQ3OTNdIFIxMzogMDAwMDAwMDAwMDAwMDAwMCBS
MTQ6IGZmZmY5ZmJiZGQ1ZjkwMDggUjE1OgowMDAwMDAwMDAwMDAwMDAwClsgICAgMi4zNjY3MjBd
IEZTOiAgMDAwMDAwMDAwMDAwMDAwMCgwMDAwKSBHUzpmZmZmOWZiYmU2YjgwMDAwKDAwMDApCmtu
bEdTOjAwMDAwMDAwMDAwMDAwMDAKWyAgICAyLjM2ODY1MV0gQ1M6ICAwMDEwIERTOiAwMDAwIEVT
OiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMwpbICAgIDIuMzcwNTgwXSBDUjI6IDAwMDA1NWE0
NDg0MWEwMDAgQ1IzOiAwMDAwMDAwMjVlOTZjMDAxIENSNDoKMDAwMDAwMDAwMDM2MDZlMApbICAg
IDIuMzcyNDkwXSBEUjA6IDAwMDAwMDAwMDAwMDAwMDAgRFIxOiAwMDAwMDAwMDAwMDAwMDAwIERS
MjoKMDAwMDAwMDAwMDAwMDAwMApbICAgIDIuMzc0MzU5XSBEUjM6IDAwMDAwMDAwMDAwMDAwMDAg
RFI2OiAwMDAwMDAwMGZmZmUwZmYwIERSNzoKMDAwMDAwMDAwMDAwMDQwMApbICAgIDIuMzc1ODg4
XSBDYWxsIFRyYWNlOgpbICAgIDIuMzc3NTc3XSAgYmxrX21xX3BjaV9tYXBfcXVldWVzKzB4MmQv
MHhiMApbICAgIDIuMzc5NDczXSAgbnZtZV9wY2lfbWFwX3F1ZXVlcysweDgwLzB4YjAgW252bWVd
ClsgICAgMi4zODEzNzVdICBibGtfbXFfYWxsb2NfdGFnX3NldCsweDExOC8weDJjMApbICAgIDIu
MzgxMzgwXSAgbnZtZV9yZXNldF93b3JrKzB4MTNjYS8weDE4ODIgW252bWVdClsgICAgMi4zODQ0
MTVdICBwcm9jZXNzX29uZV93b3JrKzB4MTlkLzB4MzgwClsgICAgMi4zODQ0MTddICB3b3JrZXJf
dGhyZWFkKzB4MWRiLzB4M2IwClsgICAgMi4zODc3MTFdICBrdGhyZWFkKzB4ZmIvMHgxMzAKWyAg
ICAyLjM4NzcxNV0gID8gcHJvY2Vzc19vbmVfd29yaysweDM4MC8weDM4MApbICAgIDIuMzkxMTAw
XSAgPyBrdGhyZWFkX3BhcmsrMHg5MC8weDkwClsgICAgMi4zOTExMDNdICByZXRfZnJvbV9mb3Jr
KzB4MzUvMHg0MApbICAgIDIuMzkzNzk0XSAtLS1bIGVuZCB0cmFjZSBhMzljMGU3MTVjN2JlNjFk
IF0tLS0KWyAgICAyLjM5OTI5NF0gIG52bWUwbjE6IHAxIHAyIHAzIHA0IHA1IHA2ClsgICAgMi40
NzI3NzJdIHVzYiAxLTMuMzogTmV3IFVTQiBkZXZpY2UgZm91bmQsIGlkVmVuZG9yPTA1YWMsCmlk
UHJvZHVjdD04MjhmLCBiY2REZXZpY2U9IDEuMTIKWyAgICAyLjQ3NDE4Nl0gdXNiIDEtMy4zOiBO
ZXcgVVNCIGRldmljZSBzdHJpbmdzOiBNZnI9MSwgUHJvZHVjdD0yLApTZXJpYWxOdW1iZXI9MApb
ICAgIDIuNDc1NzM0XSB1c2IgMS0zLjM6IFByb2R1Y3Q6IEJsdWV0b290aCBVU0IgSG9zdCBDb250
cm9sbGVyClsgICAgMi40NzcyNzJdIHVzYiAxLTMuMzogTWFudWZhY3R1cmVyOiBBcHBsZSBJbmMu
CgouLi4KClsgICAxMS41NjE3NDFdIHByaW50X3JlcV9lcnJvcjogb3BlcmF0aW9uIG5vdCBzdXBw
b3J0ZWQgZXJyb3IsIGRldgpudm1lMG4xLCBzZWN0b3IgNDM3NTAyMTM2IGZsYWdzIDgwMQpbICAg
MTEuNTYxNzYwXSBFWFQ0LWZzIHdhcm5pbmcgKGRldmljZSBkbS0xKTogZXh0NF9lbmRfYmlvOjMx
NzogSS9PCmVycm9yIDEgd3JpdGluZyB0byBpbm9kZSAxOTc0MDEzIChvZmZzZXQgMjUyODg3MDQg
c2l6ZSAyMzc1Njggc3RhcnRpbmcKYmxvY2sgNjUxNjc1OSkKWyAgIDExLjU2MTc2Ml0gQnVmZmVy
IEkvTyBlcnJvciBvbiBkZXZpY2UgZG0tMSwgbG9naWNhbCBibG9jayA2NTE2NzU5CgouLi4KClsg
ICAxMS41NjE4MDFdIEVYVDQtZnMgKGRtLTEpOiBEZWxheWVkIGJsb2NrIGFsbG9jYXRpb24gZmFp
bGVkIGZvcgppbm9kZSAxOTc0MDEzIGF0IGxvZ2ljYWwgb2Zmc2V0IDYyMzQgd2l0aCBtYXggYmxv
Y2tzIDIgd2l0aCBlcnJvciA5NQpbICAgMTEuNTYxODA0XSBFWFQ0LWZzIChkbS0xKTogVGhpcyBz
aG91bGQgbm90IGhhcHBlbiEhIERhdGEgd2lsbCBiZQpsb3N0CgouLi4KClsgICAxMS42NDkwNTNd
IHByaW50X3JlcV9lcnJvcjogb3BlcmF0aW9uIG5vdCBzdXBwb3J0ZWQgZXJyb3IsIGRldgpudm1l
MG4xLCBzZWN0b3IgNDM3NTAyNzQ0IGZsYWdzIDgwMQpbICAgMTEuNjQ5MDY2XSBFWFQ0LWZzIHdh
cm5pbmcgKGRldmljZSBkbS0xKTogZXh0NF9lbmRfYmlvOjMxNzogSS9PCmVycm9yIDEgd3JpdGlu
ZyB0byBpbm9kZSAxOTc0MDEzIChvZmZzZXQgMjU1NzEzMjggc2l6ZSAyNjYyNDAgc3RhcnRpbmcK
YmxvY2sgNjUxNjgzNSkKCi4uLgoKWyAgIDExLjcxNDc0OF0gcHJpbnRfcmVxX2Vycm9yOiBvcGVy
YXRpb24gbm90IHN1cHBvcnRlZCBlcnJvciwgZGV2Cm52bWUwbjEsIHNlY3RvciA0MzU5NjI1MzYg
ZmxhZ3MgODAxClsgICAxMS43MTQ5MDhdIEFib3J0aW5nIGpvdXJuYWwgb24gZGV2aWNlIGRtLTEt
OC4KWyAgIDExLjcxNTQ3Ml0gRVhUNC1mcyBlcnJvciAoZGV2aWNlIGRtLTEpOgpleHQ0X2pvdXJu
YWxfY2hlY2tfc3RhcnQ6NjE6IERldGVjdGVkIGFib3J0ZWQgam91cm5hbCAKWyAgIDExLjcxNTQ3
NF0gRVhUNC1mcyAoZG0tMSk6IFJlbW91bnRpbmcgZmlsZXN5c3RlbSByZWFkLW9ubHkKCgpUaGFu
a3MgZm9yIHRoZSBoZWxwIQpJdsOhbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LW52bWUK

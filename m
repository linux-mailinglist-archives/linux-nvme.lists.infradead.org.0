Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0091CF1E3
	for <lists+linux-nvme@lfdr.de>; Tue, 12 May 2020 11:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rz/aMEAbNzklivsdEi2MojwbyRNvvW8Ud7Z4/Jz+FHs=; b=AeIwlh3z8uMN1q
	1pfIENF539o63W1oucglpenOaOxh1MibkmJ6iMeTZAUbfxw31iPRkHHN8xDNensYHrfWKOitt4jC6
	cGurv6/rgookyByEKKKL49XfAZN1SVOp3fLo+4Uq7WeqVfz9slRof37gq+yzBhoxqJYCNhy5K9Czv
	UZEPXrv4aGQdDgREr+Inhqs2/I+mD8sie+Yq9ZfAnnes3FsmFvRxfU5sBaAkAWbZG18GYHD08g2Bd
	xlMZh2qx6CZ3NNsLlKYMtD5mjohY5wLo7oXaGMTcDCkBeDnft5q1OVqLs4s+jZT2B7Db3HTF5c8iH
	sWQK9SFdJFYnT5gIt1ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYRV8-0006xu-D6; Tue, 12 May 2020 09:47:02 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYRV3-0006v9-8U
 for linux-nvme@lists.infradead.org; Tue, 12 May 2020 09:46:59 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200512094654epoutp02590c2e168b193529d914aeaac093ff77~OPteQP5Sj2672926729epoutp02Z
 for <linux-nvme@lists.infradead.org>; Tue, 12 May 2020 09:46:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200512094654epoutp02590c2e168b193529d914aeaac093ff77~OPteQP5Sj2672926729epoutp02Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589276814;
 bh=+MJxFa9nrnd8ro7OYKezKLN98gt2StiKdruO2OLsv4U=;
 h=Subject:Reply-To:From:To:In-Reply-To:Date:References:From;
 b=mHoxkS1ngRB/plPW3NmqV/m8dxbzknzhALnT2zpGllWAFjUMCqLzkZxtBBKfHgqQc
 8vXpyy520cVk2YU3Vd/Hj9T49p8U2N7lnzlDDmXyNPmAtUZaQJOuvEGH58febr2vBk
 pd1H87PEVEcQ6T9zbUvKG4d2UcU7CRdPqC1VNtyU=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20200512094653epcas2p1100949559c0ec2b2b73e9286dbb803dc~OPtdk-zwJ0697906979epcas2p1B;
 Tue, 12 May 2020 09:46:53 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.182]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 49LtHb2tvNzMqYkc; Tue, 12 May
 2020 09:46:51 +0000 (GMT)
X-AuditID: b6c32a48-8a5ff70000001227-11-5eba708b30c6
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 D7.1C.04647.B807ABE5; Tue, 12 May 2020 18:46:51 +0900 (KST)
Mime-Version: 1.0
Subject: RE: Problems in Samsung PM1733 SRIOV
From: Rajendra Singh <rajend.singh@samsung.com>
To: Rajendra Singh <rajend.singh@samsung.com>, Peter Walker
 <peter.walker9520@gmail.com>, "linux-nvme@lists.infradead.org"
 <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20200512093828epcms2p49d1f8de8cfd77c6edff7cde47113896c@epcms2p4>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20200512094651epcms2p1afe65ce9247f92dfffc0e1f755a68405@epcms2p1>
Date: Tue, 12 May 2020 18:46:51 +0900
X-CMS-MailID: 20200512094651epcms2p1afe65ce9247f92dfffc0e1f755a68405
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBKsWRmVeSWpSXmKPExsWy7bCmqW53wa44g29nBSzmL3vKbjHrQxe7
 ReuSXawOzB47Z91l99i8pN6jb8sqxgDmqBybjNTElNQihdS85PyUzLx0WyXv4HjneFMzA0Nd
 Q0sLcyWFvMTcVFslF58AXbfMHKBFSgpliTmlQKGAxOJiJX07m6L80pJUhYz84hJbpdSClJwC
 Q8MCveLE3OLSvHS95PxcK0MDAyNToMqEnIw9K26xFXQ6V5zc/Y6lgXGFYxcjJ4eEgInEqfdf
 WEBsIYEdjBJbVnB1MXJw8AoISvzdIQwSFhbQlZjVspoVokRJor/7CRtE3FDiz6o3rCDlbAL6
 Eo2t9SBhEYH5jBKXv2lCTOeVmNH+lAXClpbYvnwrI0g5p4CfxPFLrBBhUYmbq9+yw9jvj81n
 hLBFJFrvnWWGsAUlHvzcDRWXlPhz/Q1QPReQ3c8osfbaQaj5MxglVk0tgLD1Ja51bASL8wr4
 Srz83gU2iEVAVaJ3/lmoQS4S7dP2g8WZBbQlli18zQxyG7OApsT6XfogpoSAssSRWywQFXwS
 HYf/ssN8tWPeEyYIW01i9rqjUBNlJM4t/Q11jYfE44kLWEDOFBK4wyhxb8ZE5gmM8rMQYTsL
 yeJZCIsXMDKvYhRLLSjOTU8tNiowQY7NTYzgVKblsYPxwDmfQ4wCHIxKPLwdRjvjhFgTy4or
 cw8xSnAwK4nwtmQChXhTEiurUovy44tKc1KLDzGaAv0/kVlKNDkfmGbzSuINTY3MzAwsTS1M
 zYwslMR5N3HfjBESSE8sSc1OTS1ILYLpY+LglGpgPHOR1dOy52mVyNds7jNyUne7M3mebOPI
 DPvfnsga119hrHZlJ+ty3ddch249d2fWY4zMvjb3yp59SjtyT/VP70mW3m+b/O1RdW2bXs6P
 Ym4GoybT8Pqr+gvPeHicOftp3i/FAKmqz849MiHLVjXqJ2Q3hUgp/fD8EbNw5oUlLt8OK2zZ
 2tytxFKckWioxVxUnAgApOMaqnsDAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200512092744epcas2p26a9b41de4da7f44c507cabd85919f4bf
References: <20200512093828epcms2p49d1f8de8cfd77c6edff7cde47113896c@epcms2p4>
 <CAGkZ3m9UE_T2RDM=TLTERopuA+AjHenH_9AkTYF8f5R52W5_FQ@mail.gmail.com>
 <CGME20200512092744epcas2p26a9b41de4da7f44c507cabd85919f4bf@epcms2p1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_024657_732864_41B7F671 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Reply-To: rajend.singh@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgUGV0ZXIsCsKgDQpQTTE3MzMgc3VwcG9ydHMgVmlydHVhbGl6YXRpb24gTWFuYWdlbWVudCBh
cyBkZXNjcmliZWQgaW4gTlZNZSBzcGVjIMKgKDguNSBWaXJ0dWFsaXphdGlvbiBFbmhhbmNlbWVu
dHMgKE9wdGlvbmFsKSkuIA0KSGVuY2UgdG8gYmUgYWJsZSB0byB1c2UgVmlydHVhbCBGdWN0aW9u
IE5WTWUgY29udHJvbGxlcnMgeW91IHdpbGwgZmlyc3QgaGF2ZSB0byBhc3NpZ24gcmVzb3VyY2Vz
IHRvIHRoZSBjb250cm9sbGVyIGFuZCB0aGVuIG1ha2UgdGhlIGNvbnRyb2xsZXIgb25saW5lLiBZ
b3UgY2FuIHVzZSBudm1lIGNsaSB0byBzZW5kIHZpcnR1YWxpemF0aW9uIG1hbmFnZW1lbnQgY29t
bWFuZHMuIA0KwqANCnN0ZXBzOg0KMSkgZWNobyAwID4gL3N5cy9idXMvcGNpL2RldmljZS8ke2Jk
Zl9wZn0vc3Jpb3ZfZHJpdmVyc19hdXRvcHJvYmUNCjIpIGVjaG8ke2JkZl92Zn0gPiAvc3lzL2J1
cy9wY2kvZHJpdmVycy9udm1lL3VuYmluZMKgDQozKSBlY2hvwqAzID4gL3N5cy9idXMvcGNpL2Rl
dmljZXMvJHtiZGZfcGZ9L3NyaW92X251bXZmcw0KNCkgbnZtZSBhZG1pbi1wYXNzdGhydS9kZXYv
bnZtZTAgLS1vcGNvZGU9MHgxQyAtLWNkdzEwPTB4MTAwMDggLS1jZHcxMT0yDQo1KSBudm1lIGFk
bWluLXBhc3N0aHJ1L2Rldi9udm1lMCAtLW9wY29kZT0weDFDIC0tY2R3MTA9MHgxMDEwOCAtLWNk
dzExPTINCjYpIGVjaG8gMSA+IC9zeXMvYnVzL3BjaS9kZXZpY2VzLyR7YmRmX3ZmfS9yZXNldA0K
NykgbnZtZSBhZG1pbi1wYXNzdGhydS9kZXYvbnZtZTAgLS1vcGNvZGU9MHgxQyAtLWNkdzEwPTB4
MTAwMDkgLS1jZHcxMT0wwqANCjgpIGVjaG8gMSA+IC9zeXMvYnVzL3BjaS9kZXZpY2UvJHtiZGZf
cGZ9L3NyaW92X2RyaXZlcnNfYXV0b3Byb2JlDQo5KSBlY2hvJHtiZGZfdmZ9ID4gL3N5cy9idXMv
cGNpL2RyaXZlcnMvbnZtZS9iaW5kDQrCoA0KSG9wZSB0aGlzIGhlbHBzICENCsKgDQpUaGFua3Ms
DQo6OlJhamVuZHJhOw0KwqANCsKgDQotLS0tLS0tLS0gT3JpZ2luYWwgTWVzc2FnZSAtLS0tLS0t
LS0NClNlbmRlciA6IFBldGVyIFdhbGtlcsKgPHBldGVyLndhbGtlcjk1MjBAZ21haWwuY29tPg0K
RGF0ZSA6IDIwMjAtMDUtMTIgMTg6MjcgKEdNVCs5KQ0KVGl0bGUgOiBQcm9ibGVtcyBpbiBTYW1z
dW5nIFBNMTczMyBTUklPVg0KwqANCkhlbGxvwqBBbGwsDQrCoA0KScKgYW3CoHVzaW5nwqBTYW1z
dW5nwqBQTTE3MzPCoGFuZMKgdGVzdGluZ8KgdGhlwqBTUklPVsKgZmVhdHVyZcKgb2bCoHRoZcKg
ZGV2aWNlLg0KVGhlcmXCoHdlcmXCoHNvbWXCoHByb2JsZW1zwqB3aGlsZcKgZW5hYmxpbmfCoFZG
cy4NCsKgDQpkbWVzZ8KgbG9nc8Kgd2hpbGXCoGJvb3RpbmfCoHN5c3RlbcKgYXJlwqBhc8KgZm9s
bG93czoNCsKgDQojwqBkbWVzZ8KgfMKgZ3JlcMKgbnZtZQ0KW8KgwqDCoMKgMS40NzE0ODhdwqBu
dm1lwqBudm1lMDrCoHBjacKgZnVuY3Rpb27CoDAwMDA6MmQ6MDAuMA0KW8KgwqDCoMKgMS42ODUy
NjRdwqBudm1lwqBudm1lMDrCoFNodXRkb3duwqB0aW1lb3V0wqBzZXTCoHRvwqAxMMKgc2Vjb25k
cw0KW8KgwqDCoMKgMS42OTQ1NjVdwqBudm1lwqBudm1lMDrCoDgvMC8wwqBkZWZhdWx0L3JlYWQv
cG9sbMKgcXVldWVzDQpbwqDCoMKgwqAxLjY5NTM4M13CoG52bWUwbjE6wqBkZXRlY3RlZMKgY2Fw
YWNpdHnCoGNoYW5nZcKgZnJvbcKgMMKgdG8NCjIxNDc0ODM2NDgwMA0KwqANCiPCoGRtZXNnwqB8
wqBncmVwwqAiMDAwMDoyZDowMC4wIg0KW8KgwqDCoMKgMC4zMjYwODNdwqBwY2nCoDAwMDA6MmQ6
MDAuMDrCoFsxNDRkOmE4MjRdwqB0eXBlwqAwMMKgY2xhc3PCoDB4MDEwODAyDQpbwqDCoMKgwqAw
LjMyNjEwNV3CoHBjacKgMDAwMDoyZDowMC4wOsKgcmVnwqAweDEwOsKgW21lbcKgMHhlMTAwMDAw
MC0weGUxMDA3ZmZmwqA2NGJpdF0NClvCoMKgwqDCoDAuMzI2MTM0XcKgcGNpwqAwMDAwOjJkOjAw
LjA6wqByZWfCoDB4MzA6wqBbbWVtwqAweGZmZmYwMDAwLTB4ZmZmZmZmZmYNCnByZWZdDQpbwqDC
oMKgwqAwLjMyNjM2OF3CoHBjacKgMDAwMDoyZDowMC4wOsKgcmVnwqAweDIwYzrCoFttZW3CoDB4
MDAwMDAwMDAtMHgwMDAwN2ZmZg0KNjRiaXRdDQpbwqDCoMKgwqAwLjMyNjM3MF3CoHBjacKgMDAw
MDoyZDowMC4wOsKgVkYobinCoEJBUjDCoHNwYWNlOsKgW21lbQ0KMHgwMDAwMDAwMC0weDAwMGZm
ZmZmwqA2NGJpdF3CoChjb250YWluc8KgQkFSMMKgZm9ywqAzMsKgVkZzKQ0KW8KgwqDCoMKgMC4z
MjY1MTddwqBwY2nCoDAwMDA6MmQ6MDAuMDrCoDMxLjUwNMKgR2Ivc8KgYXZhaWxhYmxlwqBQQ0ll
wqBiYW5kd2lkdGgsDQpsaW1pdGVkwqBiecKgOMKgR1Qvc8KgeDTCoGxpbmvCoGF0wqAwMDAwOjJj
OjAwLjDCoChjYXBhYmxlwqBvZsKgNjMuMDEywqBHYi9zwqB3aXRoDQoxNsKgR1Qvc8KgeDTCoGxp
bmspDQpbwqDCoMKgwqAwLjM0ODI5NV3CoHBjacKgMDAwMDoyZDowMC4wOsKgY2FuJ3TCoGNsYWlt
wqBCQVLCoDbCoFttZW0NCjB4ZmZmZjAwMDAtMHhmZmZmZmZmZsKgcHJlZl06wqBub8KgY29tcGF0
aWJsZcKgYnJpZGdlwqB3aW5kb3cNClvCoMKgwqDCoDAuMzQ4NTQyXcKgcGNpwqAwMDAwOjJkOjAw
LjA6wqBCQVLCoDY6wqBhc3NpZ25lZMKgW21lbQ0KMHhlMTAxMDAwMC0weGUxMDFmZmZmwqBwcmVm
XQ0KW8KgwqDCoMKgMC4zNDg1NDVdwqBwY2nCoDAwMDA6MmQ6MDAuMDrCoEJBUsKgNzrCoG5vwqBz
cGFjZcKgZm9ywqBbbWVtwqBzaXplwqAweDAwMTAwMDAwwqA2NGJpdF0NClvCoMKgwqDCoDAuMzQ4
NTQ2XcKgcGNpwqAwMDAwOjJkOjAwLjA6wqBCQVLCoDc6wqBmYWlsZWTCoHRvwqBhc3NpZ27CoFtt
ZW3CoHNpemUNCjB4MDAxMDAwMDDCoDY0Yml0XQ0KW8KgwqDCoMKgMC4zNDg1ODFdwqBwY2nCoDAw
MDA6MmQ6MDAuMDrCoEJBUsKgNjrCoGFzc2lnbmVkwqBbbWVtDQoweGUxMjAwMDAwLTB4ZTEyMGZm
ZmbCoHByZWZdDQpbwqDCoMKgwqAwLjM0ODU4M13CoHBjacKgMDAwMDoyZDowMC4wOsKgQkFSwqAw
OsKgYXNzaWduZWTCoFttZW0NCjB4ZTEyMTAwMDAtMHhlMTIxN2ZmZsKgNjRiaXRdDQpbwqDCoMKg
wqAwLjM0ODU5MF3CoHBjacKgMDAwMDoyZDowMC4wOsKgQkFSwqA3OsKgYXNzaWduZWTCoFttZW0N
CjB4ZTEyMTgwMDAtMHhlMTMxN2ZmZsKgNjRiaXRdDQpbwqDCoMKgwqAwLjQ5MDI1N13CoHBjacKg
MDAwMDoyZDowMC4wOsKgQWRkaW5nwqB0b8KgaW9tbXXCoGdyb3VwwqAzNg0KW8KgwqDCoMKgMS40
NzE0ODhdwqBudm1lwqBudm1lMDrCoHBjacKgZnVuY3Rpb27CoDAwMDA6MmQ6MDAuMA0KwqANCsKg
DQpUaGVuwqBJwqBhbcKgZW5hYmxpbmfCoFZGc8Kgd2l0aMKgdGhlwqBiZWxvd8KgY29tbWFuZDoN
CsKgDQojwqBlY2hvwqAzwqA+wqAvc3lzL2J1cy9wY2kvZGV2aWNlcy8wMDAwXDoyZFw6MDAuMC9z
cmlvdl9udW12ZnMNCsKgDQpUaGVuLMKgdGhlwqBrZXJuZWzCoHRyaWVzwqB0b8KgaW5pdGlhbGl6
ZcKgdGhlwqAzwqBuZXfCoG52bWXCoFZGwqBkZXZpY2VzwqAoaS5lLiwNCi9kZXYvbnZtZTEswqAv
ZGV2L252bTLCoGFuZMKgL2Rldi9udm1lMykuDQpIb3dldmVyLMKgaW5pdGlhbGl6YXRpb27CoGFi
b3J0ZWTCoHdpdGjCoHRoZcKgYmVsb3fCoG1lc3NhZ2UuDQrCoA0KI8KgZG1lc2cNClvCoMKgMjAw
Ljc3NjE2MV3CoHBjacKgMDAwMDoyZDowMC4xOsKgWzE0NGQ6YTgyNF3CoHR5cGXCoDAwwqBjbGFz
c8KgMHgwMTA4MDINClvCoMKgMjAwLjc3Njc4NV3CoHBjacKgMDAwMDoyZDowMC4xOsKgQWRkaW5n
wqB0b8KgaW9tbXXCoGdyb3VwwqAzNw0KW8KgwqAyMDAuNzc3MDczXcKgbnZtZcKgbnZtZTE6wqBw
Y2nCoGZ1bmN0aW9uwqAwMDAwOjJkOjAwLjENClvCoMKgMjAwLjc3NzE0OV3CoG52bWXCoDAwMDA6
MmQ6MDAuMTrCoGVuYWJsaW5nwqBkZXZpY2XCoCgwMDAwwqAtPsKgMDAwMikNClvCoMKgMjAwLjc3
NzIwNF3CoHBjacKgMDAwMDoyZDowMC4yOsKgWzE0NGQ6YTgyNF3CoHR5cGXCoDAwwqBjbGFzc8Kg
MHgwMTA4MDINClvCoMKgMjAwLjc3ODgwNV3CoHBjacKgMDAwMDoyZDowMC4yOsKgQWRkaW5nwqB0
b8KgaW9tbXXCoGdyb3VwwqAzOA0KW8KgwqAyMDAuNzc5MTkzXcKgbnZtZcKgbnZtZTI6wqBwY2nC
oGZ1bmN0aW9uwqAwMDAwOjJkOjAwLjINClvCoMKgMjAwLjc3OTIyNF3CoG52bWXCoDAwMDA6MmQ6
MDAuMjrCoGVuYWJsaW5nwqBkZXZpY2XCoCgwMDAwwqAtPsKgMDAwMikNClvCoMKgMjAwLjc3OTI4
NF3CoHBjacKgMDAwMDoyZDowMC4zOsKgWzE0NGQ6YTgyNF3CoHR5cGXCoDAwwqBjbGFzc8KgMHgw
MTA4MDINClvCoMKgMjAwLjc4MDE0Nl3CoHBjacKgMDAwMDoyZDowMC4zOsKgQWRkaW5nwqB0b8Kg
aW9tbXXCoGdyb3VwwqAzOQ0KW8KgwqAyMDAuNzgwNDMwXcKgbnZtZcKgbnZtZTM6wqBwY2nCoGZ1
bmN0aW9uwqAwMDAwOjJkOjAwLjMNClvCoMKgMjAwLjc4MDQ2MF3CoG52bWXCoDAwMDA6MmQ6MDAu
MzrCoGVuYWJsaW5nwqBkZXZpY2XCoCgwMDAwwqAtPsKgMDAwMikNClvCoMKgMjMxLjMzNjgwNF3C
oG52bWXCoG52bWUxOsKgRGV2aWNlwqBub3TCoHJlYWR5O8KgYWJvcnRpbmfCoGluaXRpYWxpc2F0
aW9uDQpbwqDCoDIzMS4zMzY4MDddwqBudm1lwqBudm1lMjrCoERldmljZcKgbm90wqByZWFkeTvC
oGFib3J0aW5nwqBpbml0aWFsaXNhdGlvbg0KW8KgwqAyMzEuMzM2ODEyXcKgbnZtZcKgbnZtZTI6
wqBSZW1vdmluZ8KgYWZ0ZXLCoHByb2JlwqBmYWlsdXJlwqBzdGF0dXM6wqAtMTkNClvCoMKgMjMx
LjMzNjgyOF3CoG52bWXCoG52bWUxOsKgUmVtb3ZpbmfCoGFmdGVywqBwcm9iZcKgZmFpbHVyZcKg
c3RhdHVzOsKgLTE5DQpbwqDCoDIzMS4zNDQ3NTldwqBudm1lwqBudm1lMzrCoERldmljZcKgbm90
wqByZWFkeTvCoGFib3J0aW5nwqBpbml0aWFsaXNhdGlvbg0KW8KgwqAyMzEuMzQ0Nzc4XcKgbnZt
ZcKgbnZtZTM6wqBSZW1vdmluZ8KgYWZ0ZXLCoHByb2JlwqBmYWlsdXJlwqBzdGF0dXM6wqAtMTkN
CsKgDQpQbGVhc2XCoGxldMKgbWXCoGtub3fCoGlmwqBJwqBhbcKgbWlzc2luZ8Kgc29tZXRoaW5n
wqB3aGlsZcKgZW5hYmxpbmfCoFZGc8KgaGVyZS4NCsKgDQpUaGFua3MsDQpQZXRlcg0KwqANCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQpsaW51eC1udm1l
wqBtYWlsaW5nwqBsaXN0DQpsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcNCmh0dHBzOi8v
cHJvdGVjdDIuZmlyZWV5ZS5jb20vdXJsP2s9ODBkMjMwMTYtZGQwMjM4ZGEtODBkM2JiNTktMDAw
YmFiZmYzNzkzLTZjNjc4NDI0YTI1MTVlZTEmcT0xJnU9aHR0cCUzQSUyRiUyRmxpc3RzLmluZnJh
ZGVhZC5vcmclMkZtYWlsbWFuJTJGbGlzdGluZm8lMkZsaW51eC1udm1lDQrCoA0KwqANCsKgDQrC
oAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=

Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 713E02757F
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 07:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ZQHRcJg2Li+5eYdC1ShzAngC5q9nIZWmgl0sJ424sc=; b=SyHm6QZI20akw7
	l4A5TVXgUX9wlugo6dR+RoY3LitChPqgnfW5JG1K4cDgsN+0px+i0JAeID2zt75NyLosdnpqkoAu/
	MwIh1ab6TkcFRzEDiKsTimuvitZz1RZeLxRPw9l2SVAeUWA8NQ8gzKdjw89W5L+J5klvKQPCHFY3/
	8VA/BeH5FDqFZRF+70GKIvcuTHy4089nwaldTgh14noMZBdqEdOK3Jmr+DVE+/Vv1y0I4m/HxFcKv
	lrqWsw1fsWA9fjOQD0AKTZvoBYejEX6uafAONrNvzwm1f9tddjUfQZAjlt4eMgbW9P9362ENErZ5i
	spWs14yOYVaEGVcgCH9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTgM7-0000PY-T8; Thu, 23 May 2019 05:33:31 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTgM1-0000P5-6V
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 05:33:27 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D3409AF46;
 Thu, 23 May 2019 05:33:21 +0000 (UTC)
Subject: Re: [PATCH 3/4] nvme-fc: fail reconnect if state change fails
To: Arun Easi <aeasi@marvell.com>
References: <20190520063624.50338-1-hare@suse.de>
 <20190520063624.50338-4-hare@suse.de>
 <alpine.LRH.2.21.9999.1905221035410.9636@mvluser05.qlc.com>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 mQINBE6KyREBEACwRN6XKClPtxPiABx5GW+Yr1snfhjzExxkTYaINHsWHlsLg13kiemsS6o7
 qrc+XP8FmhcnCOts9e2jxZxtmpB652lxRB9jZE40mcSLvYLM7S6aH0WXKn8bOqpqOGJiY2bc
 6qz6rJuqkOx3YNuUgiAxjuoYauEl8dg4bzex3KGkGRuxzRlC8APjHlwmsr+ETxOLBfUoRNuE
 b4nUtaseMPkNDwM4L9+n9cxpGbdwX0XwKFhlQMbG3rWA3YqQYWj1erKIPpgpfM64hwsdk9zZ
 QO1krgfULH4poPQFpl2+yVeEMXtsSou915jn/51rBelXeLq+cjuK5+B/JZUXPnNDoxOG3j3V
 VSZxkxLJ8RO1YamqZZbVP6jhDQ/bLcAI3EfjVbxhw9KWrh8MxTcmyJPn3QMMEp3wpVX9nSOQ
 tzG72Up/Py67VQe0x8fqmu7R4MmddSbyqgHrab/Nu+ak6g2RRn3QHXAQ7PQUq55BDtj85hd9
 W2iBiROhkZ/R+Q14cJkWhzaThN1sZ1zsfBNW0Im8OVn/J8bQUaS0a/NhpXJWv6J1ttkX3S0c
 QUratRfX4D1viAwNgoS0Joq7xIQD+CfJTax7pPn9rT////hSqJYUoMXkEz5IcO+hptCH1HF3
 qz77aA5njEBQrDRlslUBkCZ5P+QvZgJDy0C3xRGdg6ZVXEXJOQARAQABtCpIYW5uZXMgUmVp
 bmVja2UgKFN1U0UgTGFicykgPGhhcmVAc3VzZS5kZT6JAkEEEwECACsCGwMFCRLMAwAGCwkI
 BwMCBhUIAgkKCwQWAgMBAh4BAheABQJOisquAhkBAAoJEGz4yi9OyKjPOHoQAJLeLvr6JNHx
 GPcHXaJLHQiinz2QP0/wtsT8+hE26dLzxb7hgxLafj9XlAXOG3FhGd+ySlQ5wSbbjdxNjgsq
 FIjqQ88/Lk1NfnqG5aUTPmhEF+PzkPogEV7Pm5Q17ap22VK623MPaltEba+ly6/pGOODbKBH
 ak3gqa7Gro5YCQzNU0QVtMpWyeGF7xQK76DY/atvAtuVPBJHER+RPIF7iv5J3/GFIfdrM+wS
 BubFVDOibgM7UBnpa7aohZ9RgPkzJpzECsbmbttxYaiv8+EOwark4VjvOne8dRaj50qeyJH6
 HLpBXZDJH5ZcYJPMgunghSqghgfuUsd5fHmjFr3hDb5EoqAfgiRMSDom7wLZ9TGtT6viDldv
 hfWaIOD5UhpNYxfNgH6Y102gtMmN4o2P6g3UbZK1diH13s9DA5vI2mO2krGz2c5BOBmcctE5
 iS+JWiCizOqia5Op+B/tUNye/YIXSC4oMR++Fgt30OEafB8twxydMAE3HmY+foawCpGq06yM
 vAguLzvm7f6wAPesDAO9vxRNC5y7JeN4Kytl561ciTICmBR80Pdgs/Obj2DwM6dvHquQbQrU
 Op4XtD3eGUW4qgD99DrMXqCcSXX/uay9kOG+fQBfK39jkPKZEuEV2QdpE4Pry36SUGfohSNq
 xXW+bMc6P+irTT39VWFUJMcSuQENBFrJ3xIBCACwrGFb0QuXZN+vS/22B8/n1qgwwA8ARSX2
 OCaQ+08sE9i+kl2n9h2j0KCgxSIp3qF7y6RWVs/ytHNAlQtMq7OWfECtbN6Zi5B29+wymSJ3
 qMWzEG7rLEzsHllux6EcBgzXQQU0SzC5Sdwb9GbKk0S4RqF8EdshYeDMbxd1M5zP/uwH7p+l
 xQtYbdPM+QuPebFrppxulW4/x+DT8wq/Wu+/coxHPL86vLCovbrI8VJ0tL+zS+AUGQUWUnH2
 t+25bhjd/h0n0Z2K51pIMPJpWfspOQRv/vTpre67d7NobNCN0ZHT4KDQ7eOIeVkyYEyjW8mr
 NI/KjOC0MEblu0t3oIt3ABEBAAGJA3IEGAEIACYWIQSa6w7D2seabcL6eKts+MovTsiozwUC
 WsnfEgIbAgUJB4TOAAFACRBs+MovTsioz8B0IAQZAQgAHRYhBAT2/xOW3vyQk45unU1yuOr3
 2aRuBQJayd8SAAoJEE1yuOr32aRuWMUIAKnxtAJyMoE4bPUQu7K3rl1vjKMlt554gd4hMQQR
 NOGHyikeMka/sY1/vgg4/ETBgdq93QmMoz7NJgmf0/iRJemsIh23QfWzAEX6F90yM2/niX0h
 v3GC2NzOgqgD15Y75csBsgwL8hR/8aPqlx+PAuNehRFy1wMlU97Zz63xttC6sWo+OGCeKjYA
 zo/JU+aoVGfgk/zwKFc7PKJpCxIDDgS38TC8q6+fBlgjO+Ap2wNA7J8NPluFfV2Yos/vxCTz
 EpcafNH+G2XWwMv1SaQ52LfU3R0x1VmMyIkWn0tD8Pkt9FUXVEIK+4mYid5LgQo+4bPgsgE6
 4YPCfQlVEC0Qbs32oQ//RXCFB96HgS7OkFBfDvUxP6dPnY4KNZvgWQ81bBqHJiBAG6SPV0bz
 p8h6iKV9CnZoSQHYpZKZPfXfOpWO9r4SN+YABw2WwKtQPTcRRi/SySjvi9eaYwyb96hJQ9kY
 oYw+4SK0TUUcQeeqab60GZi9g7PIs195T9j1ZOjUNgUFeHshsp2vy/KXsFysV1stXg3wdxnO
 RLwrKbCLIcNPtldi+FLi5+wd2ZCuaZtzVxIVcAX2UF3Mn5P4JtTVqbwzDWqFvpm/KDbT5tvs
 NkaoLZ4jMh+8/+dSXkwmryuSZ7UhTu5iyYPv2CN65g1TawPzSbj42Hwd8fotVsK5fpqaQXVu
 AjMJmI3HFug8RwI+GE/Okb2O6PW/qEDLcr4i5TpxtD95x5X+yWaCpCFUVnR1m1lw0TZ9YYev
 7hC5dPWIgrV1srDX7RfG9TVqNYNE7I9vcYd6SPOSa3bawpQ8Kt8BMMvqyE+xKsjUCR8BGnNg
 M/Vq/pbPQaIgQcksVQPfSwGPGZFWdqrIO9smARFw+z4ncHLAZIMGVqi694/827CWjyQaXBYc
 jD/1tX/49Iuv8HFIdUHOa/2FPZWFpl12vE7NjhYOF3R9CSdygY96eJYZBiIMtB4tCwR7Z4oJ
 irhEq6k91ztkc1ETXq7YXuq9AlPXNFMyNacjJfNwtvnAYM47Nnqedne5AQ0EWsnfjAEIAMsj
 WxtQLlJs8s6xiXi1n1a8/0PxQE7oaAqcsu4+U/W8zQl8RVZDTGuS0bkezr+sYI0+H7ObSGv/
 mVb5Gvq5DLhAwQ1kuYjHK/NZAbvlDszydqR16RUleXQZwJZXgJRdKuotDfhkiIRvws3N+OdD
 q4cI7wS5Gcv2kGLvXtZHR02gL4BLewqLqNe+uY8ptU+PHvHUjyJJR3ZGPaET6hd+aHlIuV+U
 jgGJrx7etQhzSl8s4BzG/x46WfB96794AncO1xGHhOwJrYbc2K3iARVQRzKHzK8XWuJzjY1E
 ImppmThD0Nn3v4B1b+BLQx4jnoyX1YZrimxYKPOfqkhOtxD2uUcAEQEAAYkCPAQYAQgAJhYh
 BJrrDsPax5ptwvp4q2z4yi9OyKjPBQJayd+MAhsMBQkHhM4AAAoJEGz4yi9OyKjPTb4P/Awn
 B7WhZLbsFPCgeHLTgzhsS3oMRHqQfzXXUBsCuefYToR3oCBsMKeWXJQ8kelStm7g83pCwubA
 lD6uoruheXOR2NvNLzsePMo3F8BPjVCfov7pRMEBjVCbdVa1RAZNejGIXRWdGpDQEx2tdWhr
 hwfyryX+CbCgDc+9pLQaVYmzOr01yB2GN5kdz+294o9Ha3fvhNCSXCwWiMhcCL5YEjn+J3F8
 scBJb90lWJbAEZK0acJoVPYo4PGIhLA6Obdrmo9tUDXczRXJz6ypZEmo2glN5n6/XVDlSWr0
 GbJZ3e3Wgp/jMyWQZ2oPh6VFjrcfJbp8BFbtPnPthD3Ed+/eUCFiG8MrTsZ2WrDjNhgDYaQS
 fjQq/mgSmG+z+4NkXFQlKU3HAndB7qFg1l+6//i8h8R3Ps/lqxsB016Zowps4WV7KVGltR47
 UhU0UhG22gpYFNnXppabbkK1iBqbFOreo068VJJEMldArs9BEoEZ9IOka6PxSiFL7H2L+w/v
 k5tDfwysXhk4ZanTcF2C9h2aGugsmGyPxj5IUtgBGFAwoNNLJeK8B7I8Bav7mgpvDqHj8txe
 /hoB9RLdqFQYjFqwh3ldCfJhdKeazWxGH6lm6OQ9CDd+fcL/8yT5eoZtG1jELVx+jR8C2nHJ
 zwfXlx5daukQCwO0M2AqNOxmgYXK1gFsuQINBE6KyREBEACvEJggkGC42huFAqJcOcLqnjK8
 3t4TVwEnJRisbY/VdeZIHTGtcGLqsALDzk+bEAcZapguzfp7cySzvuR6Hyq7hKEjEHAZmI/3
 IDc9nbdhEgdCiFatah0XZ/p4vp7KAelYqbv8YF/ORLylAdLh9rzLR6yHFqVaR4WL4pl4kEWw
 FhNSHLxe55G56/dxBuoj4RrFoX3ynerXfbp4dH2KArPc0NfoamqebuGNfEQmDbtnCGE5zKcR
 0zvmXsRpqU7+caufueZyLwjTU+y5p34U4PlOO2Q7/bdaPEdXfpgvSpWk1o3H36LvkPV/PGGD
 CLzaNn04BdiiiPEHwoIjCXOAcR+4+eqM4TSwVpTn6SNgbHLjAhCwCDyggK+3qEGJph+WNtNU
 7uFfscSPk4jqlxc8P+hn9IqaMWaeX9nBEaiKffR7OKjMdtFFnBRSXiW/kOKuuRdeDjL5gWJj
 Y+IpdafPKhjvUFtfSwGdrDUh3SvB5knSixE3qbxbhbNxmqDVzyzMwunFANujyyVizS31DnWC
 6tKzANkCk15CyeFC6sFFu+WpRxvC6fzQTLI5CRGAB6FAxz8Hu5rpNNZHsbYs9Vfr/BJuSUfR
 I/12eOCLIvxRPpmMOlcI4WDW3EDkzqNAXn5Onx/b0rFGFpM4GmSPriEJdBb4M4pSD6fN6Y/J
 rng/BdwkSQARAQABiQIlBBgBAgAPBQJOiskRAhsMBQkSzAMAAAoJEGz4yi9OyKjPgEwQAIP/
 gy/Xqc1qOpzfFScswk3CEoZWSqHxn/fZasa4IzkwhTUmukuIvRew+BzwvrTxhHcz9qQ8hX7i
 DPTZBcUtovWPxz+3XfbGqE+q0JunlIsP4N+K/I10nyoGdoFpMFMfDnAiMUiUatHRf9Wsif/n
 T6oRiPNJT0EbbeSyIYe+ZOMFfZBVGPqBCbe8YMI+JiZeez8L9JtegxQ6O3EMQ//1eoPJ5mv5
 lWXLFQfxf4rAcKseM8DE6xs1+1AIsSIG6H+EE3tVm+GdCkBaVAZo2VMVapx9k8RMSlW7vlGE
 QsHtI0FTc1XNOCGjaP4ITYUiOpfkh+N0nUZVRTxWnJqVPGZ2Nt7xCk7eoJWTSMWmodFlsKSg
 fblXVfdM9qoNScM3u0b9iYYuw/ijZ7VtYXFuQdh0XMM/V6zFrLnnhNmg0pnK6hO1LUgZlrxH
 wLZk5X8FuD/0MCbPmsYUMHPuJd5dSLUFTlejVXIbKTSAMd0tDSP5Ms8Ds84z5eHreiy1ijat
 qRFWFJRpZtWlhGRERnDH17PUXDglsOA08HCls0PHx8itYsjYCAyETlxlLApXWdVl9YVwbQpQ
 +i693t/YPGu8jotn0++P19d3JwXW8t6TVvBIQ1dRZHx1IxGLMn+CkDJMOmHAUMWTAXX2rf5t
 Ujas8/v2azzYF4VRJsdl+d0MCaSy8mUh
Organization: SUSE Linux GmbH
Message-ID: <f59abb21-c3e8-1aa3-9246-f4141862aa69@suse.de>
Date: Thu, 23 May 2019 07:33:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <alpine.LRH.2.21.9999.1905221035410.9636@mvluser05.qlc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_223325_532484_06A23715 
X-CRM114-Status: GOOD (  20.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8yMi8xOSA3OjQzIFBNLCBBcnVuIEVhc2kgd3JvdGU6Cj4gT24gU3VuLCAxOSBNYXkgMjAx
OSwgMTE6MzZwbSwgSGFubmVzIFJlaW5lY2tlIHdyb3RlOgo+IAo+PiBJZiB0aGUgZmluYWwgc3Rh
dGUgY2hhbmdlIHRvIExJVkUgaW4gbnZtZV9mY19jcmVhdGVfYXNzb2NpYXRpb24oKQo+PiBmYWls
cyB0aGUgY29udHJvbGxlciBpcyBub3Qgb3BlcmF0aW9uYWwgYXMgbm8gSS9PIGlzIHBvc3NpYmxl
Lgo+PiBTbyB3ZSBzaG91bGQgYmUgcmV0dXJuaW5nIGFuIGVycm9yIGhlcmUgdG8gcmVzY2hlZHVs
ZSByZWNvbm5lY3QuCj4+IEFkZGl0aW9uYWxseSBpdCBzaG91bGQgb25seSBiZSBjYWxsZWQgd2hp
bGUgaW4gQ09OTkVDVElORyBzdGF0ZSwgc28KPj4gYWRkIGEgY2hlY2sgZm9yIHRoaXMsIHRvby4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogSGFubmVzIFJlaW5lY2tlIDxoYXJlQHN1c2UuY29tPgo+PiAt
LS0KPj4gIGRyaXZlcnMvbnZtZS9ob3N0L2ZjLmMgfCAxOSArKysrKysrKysrKysrKysrKysrCj4+
ICAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9udm1lL2hvc3QvZmMuYyBiL2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMKPj4gaW5kZXggZTVj
ODFiYTJiN2ExLi43MWIyMjEzOWU3OGIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0
L2ZjLmMKPj4gKysrIGIvZHJpdmVycy9udm1lL2hvc3QvZmMuYwo+PiBAQCAtMjYyNCw2ICsyNjI0
LDE0IEBAIG52bWVfZmNfY3JlYXRlX2Fzc29jaWF0aW9uKHN0cnVjdCBudm1lX2ZjX2N0cmwgKmN0
cmwpCj4+ICAKPj4gIAkrK2N0cmwtPmN0cmwubnJfcmVjb25uZWN0czsKPj4gIAo+PiArCWlmIChj
dHJsLT5jdHJsLnN0YXRlICE9IE5WTUVfQ1RSTF9DT05ORUNUSU5HKSB7Cj4gCj4gUXVlc3Rpb246
IFRoZXJlIGlzIGEgcGF0aCBpbiBudm1lX2ZjX3Jlc3VtZV9jb250cm9sbGVyKCkgdGhhdCBzY2hl
ZHVsZXMgCj4gY29ubmVjdF93b3JrIHdoZW4gY29udHJvbGxlciBzdGF0ZSBpcyBOVk1FX0NUUkxf
TkVXLiBJIGFtIG5vdCBxdWl0ZSBzdXJlIAo+IHdoZW4gdGhpcyBpcyBleGVyY2lzZWQ7IGJ1dCBp
ZiBpdCBkb2VzLCBpdCBjb25mbGljdHMgd2l0aCB0aGlzIAo+IGV4cGVjdGF0aW9uLgo+IApUbyBt
eSB1bmRlcnN0YW5kaW5nLCB0aGUgdHJhbnNpdGlvbiBmcm9tIE5FVyB0byBMSVZFIGlzIG9ubHkg
dmFsaWQgZm9yClBDSTsgTlZNZS1vRiBpbXBsZW1lbnRhdGlvbnMgc2hvdWxkIGFsd2F5cyBtb3Zl
IHRvIENPTk5FQ1RJTkcgZmlyc3QsIGllCnRoZXkgc2hvdWxkIGhhdmUgYSB0cmFuc2l0aW9uIE5F
VyAtPiBDT05ORUNUSU5HIC0+IExJVkUuCgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMg
UmVpbmVja2UJCSAgIFRlYW1sZWFkIFN0b3JhZ2UgJiBOZXR3b3JraW5nCmhhcmVAc3VzZS5kZQkJ
CSAgICAgICAgICAgICAgICs0OSA5MTEgNzQwNTMgNjg4ClNVU0UgTElOVVggR21iSCwgTWF4ZmVs
ZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnCkdGOiBGLiBJbWVuZMO2cmZmZXIsIEouIFNtaXRoYXJk
LCBKLiBHdWlsZCwgRC4gVXBtYW55dSwgRy4gTm9ydG9uCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJn
KQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
bnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=

Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7657677F
	for <lists+linux-nvme@lfdr.de>; Fri, 26 Jul 2019 15:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/5Wcn00cYWl44FTaxMomR3wsSAy4N/xyC5yP1JCsGdg=; b=o9cLPHysZuA6d0fS6tmBBQ4s1
	b0QmZw8qBONAWcpvjbD7xO0xUEroNBc+aVm5/MT60jBqiEfBbsBotX55u3eJrhNwOEq2tNgnEuTF9
	qzCkAZiLb6jG/a8og+6UKHYeSZIXS/vWcNw5fgG/4pQmmqNbsohSchlDzBOFA1Y5z5utx5ZFlK40S
	3J1tb9SvS8VCCXTtFPzE+RaHczorMSfKsxT0VB/dNK47SGmU405IgBUmXh31PiU+3uIZD8s36UGP2
	u1EEkAMAknYWDnCgm1ympMYSaLDFAv9xPPRg3ukVb9CyXTWA8a79G1yyJrLLWvjZeZN5hw2XnQUUx
	XWBTu2FvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0Iy-0007NP-VY; Fri, 26 Jul 2019 13:30:40 +0000
Received: from smtp.tds.cmh.synacor.com ([64.8.70.105] helo=mail.tds.net)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0Ij-0007Mv-QC
 for linux-nvme@lists.infradead.org; Fri, 26 Jul 2019 13:30:27 +0000
DKIM-Signature: v=1; a=rsa-sha1; d=tds.net; s=20180112; c=relaxed/simple;
 q=dns/txt; i=@tds.net; t=1564147822;
 h=From:Subject:Date:To:MIME-Version:Content-Type;
 bh=c4XJqzh+0S/Bu07gYj4dcWrvoRE=;
 b=CxWnEyEU8lDwEb56YMcnb1zdmeJIio5wPyOs41VMdpoUI7wWNQBmF+Z2nMAyd4bI
 JKhYDZ4w6xUP/Yf33D0c47Draxu3VXhFVrNRryMF/QY+1FGrobM2HvqpeevvYHgE
 bKOcVUDrOGsuExsFtGmaQ8ubJCT+vzf18/dVp+2pV8NCRy/9UfPIgRfZd2xVEg+0
 lhHg//ke94hQdmDQq+9IXdSPbUCJFnqKsxOgj5wwaAdGGVxLK0vG7bfDwf74RBjm
 9RGw4EPcoane+rA0RHNI1dlAmgJrINgKGlK5z3/aE4U9ICjsfdbtJi45eWVakvfj
 y4gAdSNeXHEIOoTPMg8QSQ==;
X_CMAE_Category: , ,
X-CNFS-Analysis: v=2.3 cv=LLQYv6e9 c=1 sm=1 tr=0
 a=QQ1z/TRHJLkw7QGu0419XQ==:117 a=QQ1z/TRHJLkw7QGu0419XQ==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=KGjhK52YXX0A:10 a=IkcTkHD0fZMA:10
 a=nHvWMnLLnzEA:10 a=0o9FgrsRnhwA:10 a=C9He5zk_2WUA:10 a=crcc2pDzAAAA:8
 a=qAO9bXRTk1DLrHm59VgA:9 a=QEXdDO2ut3YA:10 a=Qx42hhkp_cWVdQ1Fdq1G:22
X-CM-Score: 0
X-Scanned-by: Cloudmark Authority Engine
X-Authed-Username: ZGF2aWRjNTAyQHRkcy5uZXQ=
Authentication-Results: smtp01.tds.cmh.synacor.com smtp.user=davidc502;
 auth=pass (LOGIN)
Received: from [69.21.125.220] ([69.21.125.220:54232] helo=[192.168.2.226])
 by mail.tds.net (envelope-from <davidc502@tds.net>)
 (ecelerity 3.6.5.45644 r(Core:3.6.5.0)) with ESMTPSA (cipher=AES128-SHA) 
 id 8B/E9-10387-D600B3D5; Fri, 26 Jul 2019 09:30:21 -0400
Subject: Re: fstrim error - AORUS NVMe Gen4 SSD
To: linux-nvme@lists.infradead.org
References: <fb510e33-5c81-6d62-fcde-a2989b3a1a8f@tds.net>
 <20190723021928.GF30776@ming.t460p>
 <4a7ec7aa-f6ee-f9dc-4a17-38f2b169c721@tds.net>
 <20190723043803.GB13829@ming.t460p>
 <20190724213054.GA5921@localhost.localdomain>
From: davidc502 <davidc502@tds.net>
Message-ID: <f3c74f5d-12c8-d7cf-2d7b-c06f04f4b738@tds.net>
Date: Fri, 26 Jul 2019 08:30:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724213054.GA5921@localhost.localdomain>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_063025_918220_111DDCCC 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.8.70.105 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [64.8.70.105 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGVsbG8sCgpPbiA3LzI0LzE5IDQ6MzAgUE0sIEtlaXRoIEJ1c2NoIHdyb3RlOgo+IE9uIFR1ZSwg
SnVsIDIzLCAyMDE5IGF0IDEyOjM4OjA0UE0gKzA4MDAsIE1pbmcgTGVpIHdyb3RlOgo+PiAgRnJv
bSB0aGUgSU8gdHJhY2UsIGRpc2NhcmQgY29tbWFuZChudm1lX2NtZF9kc20pIGlzIGZhaWxlZDoK
Pj4KPj4gICAga3dvcmtlci8xNToxSC00NjIgICBbMDE1XSAuLi4uIDkxODE0LjM0MjQ1MjogbnZt
ZV9zZXR1cF9jbWQ6IG52bWUwOiBkaXNrPW52bWUwbjEsIHFpZD03LCBjbWRpZD01NTIsIG5zaWQ9
MSwgZmxhZ3M9MHgwLCBtZXRhPTB4MCwgY21kPShudm1lX2NtZF9kc20gbnI9MCwgYXR0cmlidXRl
cz00KQo+PiAgICAgICAgICAgIDxpZGxlPi0wICAgICBbMDEzXSBkLmguIDkxODE0LjM0MjcwODog
bnZtZV9jb21wbGV0ZV9ycTogbnZtZTA6IGRpc2s9bnZtZTBuMSwgcWlkPTcsIGNtZGlkPTU1Miwg
cmVzPTAsIHJldHJpZXM9MCwgZmxhZ3M9MHgwLCBzdGF0dXM9ODE5OAo+Pgo+PiBBbmQgdGhlIHJl
dHVybmVkIGVycm9yIGNvZGUgaXMgMHg4MTk4LCBJIGFtIG5vdCBzdXJlIGhvdyB0byBwYXJzZSB0
aGUKPj4gJ0NvbW1hbmQgU3BlY2lmaWMgU3RhdHVzIFZhbHVlcycgb2YgMHg5OCwgbWF5YmUgQ2hy
aXN0b3BoLCBLZWl0aCBvciBvdXIgb3RoZXIKPj4gTlZNZSBndXlzIGNhbiBoZWxwIHRvIHVuZGVy
c3RhbmQgdGhlIGZhaWx1cmUuCj4gVGhlIDE5OGggc3RhdHVzIGNvZGUgaXMgc3RpbGwgbWFya2Vk
IHJlc2VydmVkIGluIHRoZSBsYXRlc3Qgc3BlYyBmb3IgYW4KPiBOVk0gY29tbWFuZCBzZXQsIHNv
IG5vdCBzdXJlIHdoYXQgdG8gbWFrZSBvZiBpdC4gSSB0aGluayB3ZSB3b3VsZCBoYXZlCj4gdG8g
cmVmZXIgYmFjayB0byB0aGUgdmVuZG9yLgoKVGhhbmsgeW91wqAgZm9yIHRha2luZyBhIGxvb2sg
YXQgdGhpcy4gSSBndWVzcyBteSBxdWVzdGlvbiB3b3VsZCBiZSBpZiAKeW91IGhhdmUgYSB2ZWhp
Y2xlIGluIHBsYWNlIHRvIGJlIGFibGUgdG8gcmVmZXIgYmFjayB0byB0aGUgdmVuZG9yPwoKRGF2
aWQKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=

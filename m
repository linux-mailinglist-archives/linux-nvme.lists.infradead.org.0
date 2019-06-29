Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A32715ACA8
	for <lists+linux-nvme@lfdr.de>; Sat, 29 Jun 2019 19:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+fqrdTdHWWyjYv+H/kYpzplb8/DXlf8+vdRw9/+ss84=; b=Ggx4Z3M2yrV4My
	PfmDiADhuTJ7pfhRr1K/ISD7rX6I/dxFrket5bvq7cOj7SOwxKGAmmgZ3heW1jzw2MsoAuLjcvR5U
	V8qI4KXg5bbjZM3FpqiV1hvzRljem0JudQ3KrDMQHFcO2nFVkB0+/g+lx9+3H5OKqZ5KtiB/hKnmB
	a+cv2Db/0ZOfNygItwuIS6SkbgdsvOa9y22Ks6Ln3trcmno3jgXHDgKNTTWr4wXo/0HDAPFRljVa5
	JosIxlEbcaqxgQtZ7qetTmxmv1kHNk5Jo0EocYyDWQBtEW/lAJYaTxCE9bUTzuICccgg9nZ8J+xi8
	0XqO/yOc67bhNMygIm1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhGka-0006Lj-Dl; Sat, 29 Jun 2019 17:02:56 +0000
Received: from salida.aumenta.com.mx ([209.139.208.81])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hhGkU-0006LL-KP
 for linux-nvme@lists.infradead.org; Sat, 29 Jun 2019 17:02:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by salida.aumenta.com.mx (Postfix) with ESMTP id 691AA10039B46;
 Sat, 29 Jun 2019 10:55:56 -0600 (MDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=chavero.com.mx;
 s=mail; t=1561827356;
 bh=FY+94BuA26IEiUQDsVDa/BNWxr0+OCySU/SA7LiqQr8=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=GsKaIXRtlh0tZgzMQndRHZn4pbvxZJ2oAwXa2ihEB/h5bOcXiz5OmHSgfr8hfC4of
 TDfuXURMuegZoaa2Nti+weBc5dVdSnhsCy7f4xH7LNkVkB/QZ3uJ4Jo04a7GiQSOJM
 ZGdBNhnZ8IFilenfLqkZx3+1MLTiy9L7B78j+/Ow=
X-Virus-Scanned: amavisd-new at aumenta.com.mx
Received: from salida.aumenta.com.mx ([127.0.0.1])
 by localhost (trefilp.aumenta.com.mx [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id TAWh7A_Pd_k5; Sat, 29 Jun 2019 10:55:34 -0600 (MDT)
Received: from airsk8 (unknown [189.146.207.203])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: ichavero@seispistos.com.mx)
 by salida.aumenta.com.mx (Postfix) with ESMTPSA id 4303E10039B40;
 Sat, 29 Jun 2019 10:55:33 -0600 (MDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=chavero.com.mx;
 s=mail; t=1561827334;
 bh=FY+94BuA26IEiUQDsVDa/BNWxr0+OCySU/SA7LiqQr8=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=Uz4gRFa84P/Llpc25iKbOkMus3//Y/pxYc/bm6rxkwThSJSbZAXMMEvnk6orrEL3E
 fzQHOOqnQLJxYWeJ2KD87Fnn8q/f2gEkzuK1w1GG2/2Crio+r/0zHeq2mYBKuRjZ81
 MPyycMs9QAoE908Mx8lXVfWZsesq6QN1R6Bkg8Fs=
Message-ID: <66c2814fcbb158dae94d22d3e4a4e40c40c7ef2b.camel@chavero.com.mx>
Subject: Re: nvme drive kernel 5.0 problem
From: =?ISO-8859-1?Q?Iv=E1n?= Chavero <ichavero@chavero.com.mx>
To: minwoo.im@samsung.com, Keith Busch <keith.busch@intel.com>
Date: Sat, 29 Jun 2019 11:56:49 -0500
In-Reply-To: <20190522015315epcms2p7dc1561cfbacdbd9615a48d61d3488e48@epcms2p7>
References: <2c9601b1555b0bf731310213a1d78960ea7a6ad5.camel@chavero.com.mx>
 <4a0dda5365f24e7223d1672233d7f1ac64640d31.camel@chavero.com.mx>
 <CACVXFVPXGKQ9UD6P5RsF5j8yry+1LuLrUeb4F6o74=uGK4Ak4Q@mail.gmail.com>
 <a640a0768d19aedee71a1abad7817a3a71291851.camel@chavero.com.mx>
 <20190521142000.GA350@localhost.localdomain>
 <e027eae2-0c39-8e83-5a09-fda82d4c2a52@chavero.com.mx>
 <20190521220007.GB4302@localhost.localdomain>
 <CGME20190522005114epcas4p2cae7e26ab679da2e44a50b803724a336@epcms2p7>
 <20190522015315epcms2p7dc1561cfbacdbd9615a48d61d3488e48@epcms2p7>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_100250_725546_CB5EC628 
X-CRM114-Status: UNSURE (   8.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

RWwgbWnDqSwgMjItMDUtMjAxOSBhIGxhcyAxMDo1MyArMDkwMCwgTWlud29vIEltIGVzY3JpYmnD
szoKPiA+IEkgdHJpZWQgc2V0dGluZzoKPiA+IAo+ID4gdHJhY2VfZXZlbnQ9bnZtZV9zZXR1cF9j
bWQsbnZtZV9jb21wbGV0ZV9ycQo+ID4gCj4gPiBidXQgZ290IHRoaXMgZXJyb3I6Cj4gPiAKPiA+
IFsgICAgMC4yODQwMTZdIEZhaWxlZCB0byBlbmFibGUgdHJhY2UgZXZlbnQ6IG52bWVfc2V0dXBf
Y21kCj4gPiBbICAgIDAuMjg0MDQzXSBGYWlsZWQgdG8gZW5hYmxlIHRyYWNlIGV2ZW50OiBudm1l
X2NvbXBsZXRlX3JxCj4gCj4gSU1ITywgbWF5YmUgeW91IGp1c3QgY2FuIG1ha2UgbnZtZV9jb3Jl
IG1vZHVsZSB0byBiZSBpbiBrZXJuZWwgaW1hZ2UKPiBpdHNlbGYgYW5kIHRyeSBpdCBhZ2Fpbi4g
IEl0IGxvb2tzIGxpa2UgZW5hYmxpbmcgdHJhY2VfZXZlbnQgaGFzCj4gb2NjdXJyZWQgYmVmb3Jl
Cj4gdGhlIG1vZHVsZSBpcyBsb2FkZWQgb250byBrZXJuZWwuCj4gCkkndmUgY29tcGlsZWQgdGhl
IG52bWVfY29yZSBkcml2ZXIgaW5zaWRlIHRoZSBrZXJuZWwgYW4gaSBjYW4gc2UgdGhlCnRyYWNl
IGV2ZW50cywgaSBkb24ndCByZWFsbHkgdW5kZXJzdGFuZCBpdCBidXQgaXQgZG9lcyBub3Qgc2F5
IGFueXRoaW5nCnRoYXQgY291bGQgcmVzZW1ibGUgYW4gZXJyb3IsIGknbSBwYXN0aW5nIGV4YW1w
bGVzIG9mIHRoZSB0d28gZGlmZmVyZW50Cm91dHB1dHMgaSd2ZSBpZGVudGlmaWVkOgoKICAgICAg
ICAgPGlkbGU+LTAgICAgIFswMDBdIC4ucy4gICA0MDkuMzM0NzkyOiBudm1lX2NvbXBsZXRlX3Jx
OiBudm1lMDoKZGlzaz1udm1lMG4xLCBxaWQ9MSwgY21kaWQ9MCwgcmVzPTAsIHJldHJpZXM9MCwg
ZmxhZ3M9MHgwLCBzdGF0dXM9MAogZG1jcnlwdF93cml0ZS8yLTYyOSAgIFswMDJdIC4uLi4gICA0
MDkuMzM0ODA4OiBudm1lX3NldHVwX2NtZDogbnZtZTA6CmRpc2s9bnZtZTBuMSwgcWlkPTEsIGNt
ZGlkPTAsIG5zaWQ9MSwgZmxhZ3M9MHgwLCBtZXRhPTB4MCwKY21kPShudm1lX2NtZF93cml0ZSBz
bGJhPTIzNjQ5MjgwLCBsZW49MCwgY3RybD0weDAsIGRzbWdtdD0wLCByZWZ0YWc9MCkKCgouLi4K
CgogICAgICAgICAgPGlkbGU+LTAgICAgIFswMDBdIC4ucy4gICA0MDkuMzM0NzM3OiBudm1lX2Nv
bXBsZXRlX3JxOgpudm1lMDogZGlzaz1udm1lMG4xLCBxaWQ9MSwgY21kaWQ9MCwgcmVzPTAsIHJl
dHJpZXM9MCwgZmxhZ3M9MHgwLApzdGF0dXM9MAogICAga3dvcmtlci8yOjFILTE2NSAgIFswMDJd
IC4uLi4gICA0MDkuMzM0NzU5OiBudm1lX3NldHVwX2NtZDogbnZtZTA6CmRpc2s9bnZtZTBuMSwg
cWlkPTEsIGNtZGlkPTAsIG5zaWQ9MSwgZmxhZ3M9MHgwLCBtZXRhPTB4MCwKY21kPShudm1lX2Nt
ZF93cml0ZSBzbGJhPTIzMTM2OTg3LCBsZW49MCwgY3RybD0weDAsIGRzbWdtdD0wLCByZWZ0YWc9
MCkKICAgICAgICAgIDxpZGxlPi0wICAgICBbMDAwXSAuLnMuICAgNDA5LjMzNDc5MjogbnZtZV9j
b21wbGV0ZV9ycToKbnZtZTA6IGRpc2s9bnZtZTBuMSwgcWlkPTEsIGNtZGlkPTAsIHJlcz0wLCBy
ZXRyaWVzPTAsIGZsYWdzPTB4MCwKc3RhdHVzPTAKIGRtY3J5cHRfd3JpdGUvMi02MjkgICBbMDAy
XSAuLi4uICAgNDA5LjMzNDgwODogbnZtZV9zZXR1cF9jbWQ6IG52bWUwOgpkaXNrPW52bWUwbjEs
IHFpZD0xLCBjbWRpZD0wLCBuc2lkPTEsIGZsYWdzPTB4MCwgbWV0YT0weDAsCmNtZD0obnZtZV9j
bWRfd3JpdGUgc2xiYT0yMzY0OTI4MCwgbGVuPTAsIGN0cmw9MHgwLCBkc21nbXQ9MCwgcmVmdGFn
PTApCiAgICAgICAgICA8aWRsZT4tMCAgICAgWzAwMF0gLi5zLiAgIDQwOS4zMzQ4Mzc6IG52bWVf
Y29tcGxldGVfcnE6Cm52bWUwOiBkaXNrPW52bWUwbjEsIHFpZD0xLCBjbWRpZD0wLCByZXM9MCwg
cmV0cmllcz0wLCBmbGFncz0weDAsCnN0YXR1cz0wCgoKaSBob3BlIHRoaXMgY2FuIGJlIGhlbHBm
dWwgQlRXLCBpJ20gdGVzdGluZyB3aXRoIGtlcm5lbCA1LjEuMTIKClRoYW5rcyBmb3IgdGhlIGhl
bHAKSXbDoW4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==

Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B133117DCA1
	for <lists+linux-nvme@lfdr.de>; Mon,  9 Mar 2020 10:50:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XxT/juN0NpVZ8cu0nnVF3rJX8vKSKmIWIF7VpTKM2EU=; b=ol4uU/PGLBocYB
	s616LRcV0UhRnDKA9Ss24GXCF4lApr2E+xLQjaOmK7y59ohLwtF3UQwWAhv5dRIr0xPkodYF3tU70
	IQUveTrNrySTD2K8MqhKV7T5rJXyAvBgpvWlamzrT9iYH1/uCpkk1rRvtJUrAHiAr+H6iWIw1+/jm
	H3AYWYuEisqX9YaUqf9LmrTU/TD6Sk78ZLE78AjdUuh/yFjk86Jd74+vW1Z6ShVrx4vWek0wgl/Wo
	UQFlQX/ZQy0Bp6muXkE1NCrPTSUrtzQBJRJ4GsJZxJnn70iOb9uAP98T3GSmXTfgaMunh5Nirxvf6
	5FYhhOI+pTzkt4IC+gXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBF2y-0007MI-JA; Mon, 09 Mar 2020 09:50:04 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBF2t-0007JT-Fl
 for linux-nvme@lists.infradead.org; Mon, 09 Mar 2020 09:50:00 +0000
Received: by mail-lf1-x12b.google.com with SMTP id c20so7153580lfb.0
 for <linux-nvme@lists.infradead.org>; Mon, 09 Mar 2020 02:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=9ZNbDasbLFheO0Y62vcirnFDQVRPWnOD13sMlNTgUnk=;
 b=sTxY+UZ4vWsPh7+TPAS4FL7Cl6e33dtexcM+1wVBUiXKmPhWOdkqRecPkXsrwLVSoP
 9WlAZTGGNjBfn3kmlf7LRQoyRhfOVdzXgurYtcvnEyRghxd/WonkHBSBGIb6PM7IjcZn
 Sd0rwXq3i/1sg2/JJBhMKe8kHFVZT+29uS7CMBxKtVB5R01AUuMaenO8ZARihY3zct5X
 AIpiSNkx64Gf4VGkrAtOyt7SQG6y+TogzuXpyIOOAIuTXf+TYJhLJPNnBwrexErywWF3
 gk+QOMF2r9u5p4ukeqe+FNM78isBCgo/pURm4NrkgcW8WLzxbvqUJJLOuzneFHw7oFXB
 Uz5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=9ZNbDasbLFheO0Y62vcirnFDQVRPWnOD13sMlNTgUnk=;
 b=piU+TYgrfG0lER16T4zQ7pGUcb7Q60JLeYpmo8lmdWAt9SzO6MzVUJPEXZquCGJjy8
 81Y04NuallPtu3V5WDZ72IicKK/bBifqtxSPfAnW2pxd0NZBB8u+aTBuoAcXt6j0jIPf
 nEbhWk/+mcOrZEqutaGRaZa635XZ9YGHkpcCVBkAI5g1dXKhfZeQ+HOkAa2WULYj5J6P
 mvT5/N1thwvAS72R+JdaeqUEPKKe/ONP5vrLJhwvQgNo1R0JOem52Qb9Llnf8HpqMBQB
 IihXf/jTXGJ612W0ZSNy/PZUHGoCC13Pue4MKqP7/GO5qTjR0y0QMVX43QS7UEmUP5yK
 HRew==
X-Gm-Message-State: ANhLgQ2O+ienWw23oMgKeHc8NU55/w0StrAMZsxwUJJzcV9TOJ0BU8hi
 nzRz6Df6F96eQK7eBGcqQ5aKieaV+EpJxd8bubU=
X-Google-Smtp-Source: ADFU+vvoaRDNY5mm5FRdMomS12vm8I6xyb3kh5ivgk1so0t+SWaB4ppyjsdrH0y+qEXTw5XZvqlx3bECcIgOO5vDUpA=
X-Received: by 2002:ac2:5203:: with SMTP id a3mr9054864lfl.152.1583747394758; 
 Mon, 09 Mar 2020 02:49:54 -0700 (PDT)
MIME-Version: 1.0
References: <CADS+iDV5S+QyfhE4M+fSwXuczx4WCveU+UyhKpx7HY6pfHfc6A@mail.gmail.com>
 <20200309015524.GA4567@redsun51.ssa.fujisawa.hgst.com>
In-Reply-To: <20200309015524.GA4567@redsun51.ssa.fujisawa.hgst.com>
From: Yaroslav Isakov <yaroslav.isakov@gmail.com>
Date: Mon, 9 Mar 2020 10:49:43 +0100
Message-ID: <CADS+iDXQ4HtyXSTETPqQdJS=1tKdd93vCBtAbqwXEfWt3w7GBA@mail.gmail.com>
Subject: Re: NVME is not using CPU0
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_024959_553820_90126FB0 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [yaroslav.isakov[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGVsbG8sIEtlaXRoISBJJ3ZlIHRyaWVkIHRvIHBpbiBmaW8gcHJvY2VzcydzIHRocmVhZHMsIGJ1
dCB3aXRoIG5vCmx1Y2suIE9uIG15IHN5c3RlbSwgeW91ciBjb21tYW5kIGdhdmUgdGhpczoKMCwg
MQoyCjMKNAo1CjYKNwpTbywgaXQgbG9va3MgbGlrZSBmaXJzdCBxdWV1ZSBzaG91bGQgdXNlIHR3
byBDUFVzLCBidXQgdXNpbmcgb25seQpDUFUxLiBPaCwgYW5kIGlmIEknbSBydW4gZmlvIHdpdGgg
MiB0aHJlYWRzLCB3aXRob3V0IHBpbm5pbmcsIEkgY2FuCnNlZSBpbmNyZWFzaW5nIG51bWJlcnMg
aW4gL3Byb2MvaW50ZXJydXB0cyBmb3IgYWxsIENQVXMgYmVzaWRlcyBDUFUwCgrQv9C9LCA5INC8
0LDRgC4gMjAyMCDQsy4g0LIgMDI6NTUsIEtlaXRoIEJ1c2NoIDxrYnVzY2hAa2VybmVsLm9yZz46
Cj4KPiBPbiBNb24sIE1hciAwOSwgMjAyMCBhdCAxMjo0NjoyNEFNICswMTAwLCBZYXJvc2xhdiBJ
c2Frb3Ygd3JvdGU6Cj4gPiBIZWxsbyEgSSBmb3VuZCB0aGF0IG15IG52bWUgZGlzayBpcyBub3Qg
YXNzaWduaW5nIGFueSBxdWV1ZSBvbiBDUFUwLiBJCj4gPiB0aGluaywgdGhhdCBtYXliZSBpdCBj
b3VsZCBiZSBhIGJ1ZywgcmVsYXRlZCB0byBhZG1pbiBxdWV1ZS4gRnVuY3Rpb24KPiA+IHF1ZXVl
X2lycV9vZmZzZXQgcmV0dXJuIDEgd2l0aCBub3RlIHRoYXQgdGhpcyBpcyBmb3IgYWRtaW4gcXVl
dWUuIEJ1dAo+ID4gb24gbXkgc3lzdGVtLCBhZG1pbiBxdWV1ZSBpcyBvbiB0aGUgc2FtZSBDUFUg
YXMgcTIuIEhlcmUgaXMgcGFydCBvZgo+ID4gL3Byb2MvaW50ZXJydXB0cwo+Cj4gQWxsIENQVXMg
YXJlIGFzc2lnbmVkIGFuIG52bWUgSU8gcXVldWUuIFBpbiB5b3VyIElPIHByb2Nlc3MgdG8gQ1BV
IDAsIGl0Cj4gd2lsbCBmdW5jdGlvbiBqdXN0IGZpbmUuIEFub3RoZXIgd2F5IHRvIGNvbmZpcm0g
aXMgcnVuOgo+Cj4gICAjIGNhdCAvc3lzL2Jsb2NrL252bWUwbjEvbXEvKi9jcHVfbGlzdAo+Cj4g
RXZlcnkgQ1BVIHNob3VsZCBiZSBhY2NvdW50ZWQgZm9yIGluIHRoZSBvdXRwdXQuCj4KPiBXaGF0
IHlvdSd2ZSBvYnNlcnZlZCBpcyB0aGF0IHlvdXIgY29udHJvbGxlciBkb2Vzbid0IHN1cHBvcnQg
ZW5vdWdoIElPCj4gcXVldWVzIG9yIE1TSSB2ZWN0b3JzIChvciBib3RoKSB0byBhc3NpZ24gdG8g
ZWFjaCBDUFUuIEl0IGp1c3QgbWVhbnMgdGhhdAo+IGEgY29tbWFuZCB5b3Ugc3VibWl0IG9uIHRo
ZSBxdWV1ZSBhc3NpZ25lZCB0byBDUFUgMCB3aWxsIGdldCBjb21wbGV0ZWQgb24KPiBhIGRpZmZl
cmVudCBDUFUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==

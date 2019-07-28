Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D98D77FB1
	for <lists+linux-nvme@lfdr.de>; Sun, 28 Jul 2019 15:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+BuGXEjDMieEoeGwxLDA/nK4SCAVdzasb+uocsGS2g=; b=DTqQnB1t4o415Z
	0MrjBMoQl/x7Em0Xpxb8SzrCADfKbIR6ZeUOVz7QZ4IIM1Q8fiiOnIyPWVttewhjV7m1E2bjmKgvK
	Ha/EkLCDXt4xk26WcKfvN8oXGs4/wY/NIwOZNFeF04HUEZvJKjgTS+0NZkCHANcTRKwM3kNOkYv7/
	vahQcqbSGPzi9MEYeMsKOC91JkXPIR3S/FHMQ/G7pN8ZzaB2Q9onMtyhxUlNZcwFX6EG8HeQBhSEv
	2zX1P2Wkp3aUVA3jCy7IoWSGmahb9cmHhdVHCzju1cZp6GDvIzHCjPhSiGAGJiqraNkbv7dtwE9JN
	OGbXC7SQjHNPd12VXmcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrjaM-0006fV-9A; Sun, 28 Jul 2019 13:51:38 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrja6-0006f4-If
 for linux-nvme@lists.infradead.org; Sun, 28 Jul 2019 13:51:23 +0000
Received: by mail-pl1-x644.google.com with SMTP id k8so26489066plt.3
 for <linux-nvme@lists.infradead.org>; Sun, 28 Jul 2019 06:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=J5EWyWb6OJG/qo28K8qrU5tbTM1GhiRTe7zmHtkL0sU=;
 b=N9evRnuLmAVuLHTqQAZ3uOBrXAThgh5gzpWjrFhIEwZMgblSRcil4F6BTvabT/JSCp
 0ll60vQnyXY4013QRHvhcNfQ4ViIB19pdRICB9rM0INQ71s53e5qR1n3TXdPJB/XpCxe
 oKiCxrV9+IoYmcRrjVrWTgW/u29NIy9L7mvb20VdR6jzjymiRgRpFr+IjLXWdfrSeN4t
 Uiry6wzxvRIn5BbhSnzX74/j91+N5ntITfgusBUWHcdd4X1HaOPyD7i7Q6lfv7B5qgbj
 VSwpgjyaLdcbbxf9U8J/M7aZPtrMBG6B0O6B8S/p5mnrTbA3nmZVSrPZpzn8qeLgk0s8
 Xb9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=J5EWyWb6OJG/qo28K8qrU5tbTM1GhiRTe7zmHtkL0sU=;
 b=aGKwvMB5NsE58uU+pH6PVGZXDxmHxIfO5l7Y+KL/Ul5SoaM5MzlaO5l6IZk00YVjM6
 k9JTv8aV1gQgIwyudWLTpA8P5DiYp9mld93nljr3YkQ/FkzN65KaXONyu9o93ga1LbTZ
 oqVzd5feq9NPVbdo5a5b8vGcSYDMIrmzEYhmg58CgUdRRBMZhDjSOgG4id9H8zqmKFuK
 lL5kklIjrI13ki7oKEaJgPueae8K2l4szVc/At9mnmfE9W+CdKXbFYJxh3cpZPLMRO91
 iUzlFWlhuKgqvSykTQdf7ydxmWykE9ukWYFxbzR/mr//ikR6ggjxO49g/yBEzcPCw3ew
 xXug==
X-Gm-Message-State: APjAAAX2+qFbHvpOkTna+77HzFn+enQebUIVj8WQ0qZAvO/B+9ES/0O/
 b3QIygkox9dV+DchE7/pEQQ4PPPJxVnEmkQ8lxY=
X-Google-Smtp-Source: APXvYqzql+I3rtHiPCzP+iWAhOvUZgDGGiWzkArham9wCsJ28xyhN0cqGq4Wqdx4n6uUVWM9QWfe+Hti42qY6lh88Kk=
X-Received: by 2002:a17:902:44f:: with SMTP id
 73mr106702962ple.192.1564321878030; 
 Sun, 28 Jul 2019 06:51:18 -0700 (PDT)
MIME-Version: 1.0
References: <1563807552-23498-1-git-send-email-akinobu.mita@gmail.com>
 <1563807552-23498-2-git-send-email-akinobu.mita@gmail.com>
 <44a6093f-7df7-9442-c33b-5827eb5f187b@gmail.com>
In-Reply-To: <44a6093f-7df7-9442-c33b-5827eb5f187b@gmail.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Sun, 28 Jul 2019 22:51:06 +0900
Message-ID: <CAC5umygzNj=7LjzrzrVgOyLiZrKckaCgH68j0COFuWvX1yZAzA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] block: introduce LED block device activity trigger
To: Jacek Anaszewski <jacek.anaszewski@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_065122_644655_745FF93D 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
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
Cc: Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Dan Murphy <dmurphy@ti.com>,
 Pavel Machek <pavel@ucw.cz>, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDfmnIgyN+aXpSjlnJ8pIDY6MjIgSmFjZWsgQW5hc3pld3NraSA8amFjZWsuYW5hc3pl
d3NraUBnbWFpbC5jb20+Ogo+Cj4gSGkgQWtpbm9idSwKPgo+IFRoYW5rIHlvdSBmb3IgdGhlIHYy
LiBJJ3ZlIGNoZWNrZWQgYW5kIGl0IHdvcmtzIGFzIGV4cGVjdGVkLgo+Cj4gT25lIHRoaW5nIGlz
IG1pc3NpbmcgdGhvdWdoIC0gQUJJIGRvY3VtZW50YXRpb24uCj4KPiBQbGVhc2UgYWRkIERvY3Vt
ZW50YXRpb24vQUJJL3Rlc3Rpbmcvc3lzZnMtY2xhc3MtbGVkLXRyaWdnZXItYmxrCj4gYW5kIGRv
Y3VtZW50IHJlYWQsIHdyaXRlIGFuZCBkaXNjYXJkIGZpbGVzLgoKT0suIEknbGwgYWRkIGRvY3Vt
ZW50IGxpa2UgYmVsb3cuCgpXaGF0OiAgICAgICAgICAgL3N5cy9jbGFzcy9sZWRzLzxsZWQ+L2lu
dGVydmFsCkRhdGU6ICAgICAgICAgICBBdWcgMjAxOQpLZXJuZWxWZXJzaW9uOiAgNS40CkNvbnRh
Y3Q6ICAgICAgICBsaW51eC1sZWRzQHZnZXIua2VybmVsLm9yZwpEZXNjcmlwdGlvbjoKICAgICAg
ICAgICAgICAgIFNwZWNpZmllcyB0aGUgZHVyYXRpb24gb2YgdGhlIExFRCBibGluayBpbiBtaWxs
aXNlY29uZHMuCiAgICAgICAgICAgICAgICBEZWZhdWx0cyB0byA1MCBtcy4KCldoYXQ6ICAgICAg
ICAgICAvc3lzL2NsYXNzL2xlZHMvPGxlZD4vcmVhZApEYXRlOiAgICAgICAgICAgQXVnIDIwMTkK
S2VybmVsVmVyc2lvbjogIDUuNApDb250YWN0OiAgICAgICAgbGludXgtbGVkc0B2Z2VyLmtlcm5l
bC5vcmcKRGVzY3JpcHRpb246CiAgICAgICAgICAgICAgICBTaWduYWwgZGF0YSByZWFkIG9uIHRo
ZSBibG9jayBkZXZpY2UuCiAgICAgICAgICAgICAgICBJZiBzZXQgdG8gMCwgdGhlIExFRCB3aWxs
IG5vdCBibGluayBvbiBkYXRhIHJlYWQuCiAgICAgICAgICAgICAgICBJZiBzZXQgdG8gMSAoZGVm
YXVsdCksIHRoZSBMRUQgd2lsbCBibGluayBmb3IgdGhlIG1pbGxpc2Vjb25kcwogICAgICAgICAg
ICAgICAgc3BlY2lmaWVkIGluIGludGVydmFsIHRvIHNpZ25hbCBkYXRhIHJlYWQuCgpXaGF0OiAg
ICAgICAgICAgL3N5cy9jbGFzcy9sZWRzLzxsZWQ+L3dyaXRlCkRhdGU6ICAgICAgICAgICBBdWcg
MjAxOQpLZXJuZWxWZXJzaW9uOiAgNS40CkNvbnRhY3Q6ICAgICAgICBsaW51eC1sZWRzQHZnZXIu
a2VybmVsLm9yZwpEZXNjcmlwdGlvbjoKICAgICAgICAgICAgICAgIFNpZ25hbCBkYXRhIHdyaXR0
ZW4gb24gdGhlIGJsb2NrIGRldmljZS4KICAgICAgICAgICAgICAgIElmIHNldCB0byAwLCB0aGUg
TEVEIHdpbGwgbm90IGJsaW5rIG9uIGRhdGEgd3JpdHRlbi4KICAgICAgICAgICAgICAgIElmIHNl
dCB0byAxIChkZWZhdWx0KSwgdGhlIExFRCB3aWxsIGJsaW5rIGZvciB0aGUgbWlsbGlzZWNvbmRz
CiAgICAgICAgICAgICAgICBzcGVjaWZpZWQgaW4gaW50ZXJ2YWwgdG8gc2lnbmFsIGRhdGEgd3Jp
dHRlbi4KCldoYXQ6ICAgICAgICAgICAvc3lzL2NsYXNzL2xlZHMvPGxlZD4vZGlzY2FyZApEYXRl
OiAgICAgICAgICAgQXVnIDIwMTkKS2VybmVsVmVyc2lvbjogIDUuNApDb250YWN0OiAgICAgICAg
bGludXgtbGVkc0B2Z2VyLmtlcm5lbC5vcmcKRGVzY3JpcHRpb246CiAgICAgICAgICAgICAgICBT
aWduYWwgZGF0YSBkaXNjYXJkZWQgb24gdGhlIGJsb2NrIGRldmljZS4KICAgICAgICAgICAgICAg
IElmIHNldCB0byAwLCB0aGUgTEVEIHdpbGwgbm90IGJsaW5rIG9uIGRhdGEgZGlzY2FyZGVkLgog
ICAgICAgICAgICAgICAgSWYgc2V0IHRvIDEgKGRlZmF1bHQpLCB0aGUgTEVEIHdpbGwgYmxpbmsg
Zm9yIHRoZSBtaWxsaXNlY29uZHMKICAgICAgICAgICAgICAgIHNwZWNpZmllZCBpbiBpbnRlcnZh
bCB0byBzaWduYWwgZGF0YSBkaXNjYXJkZWQuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1udm1lCg==

Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB58105381
	for <lists+linux-nvme@lfdr.de>; Thu, 21 Nov 2019 14:48:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+48JUE9uTLro8TMDMPOgu7UkGgg/sWx7TzH+5MVnB6c=; b=YD58lfLZ/4Rdnz
	PnscC5bA7rKXtQJCBjm5jJSjYIsyGCtpPGl9slLRyCJfYZqtQeJyEOpO8yTIR3/r8JjEgcBwgbayL
	sc8P2tg4bevsHw9bQ8XQZk9qZqZZkUuAh6RpIM2ZpVmDSmJsXViMEQAudGBNFnq4zR6pz+Ib0N/P6
	3m9eym6kibq2lA+z+KaR2m39ewlz4fqJ/Ucfp+4cOMEMr9RUsoyvnn4Cwrahs/LLKGx5qBmSspvfi
	jpa8cXw72Lv9nf2J4+elHeVTwegscMoqzy1DnD29IsKPxH0SMgnqO3VpVa+tAzy8Nu8drTvx0+Z0i
	ZXZFGdiT8d7o8hKW9ihw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXmp5-0007vY-TV; Thu, 21 Nov 2019 13:48:39 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXmp1-0007vC-4C
 for linux-nvme@lists.infradead.org; Thu, 21 Nov 2019 13:48:36 +0000
Received: by mail-lj1-x243.google.com with SMTP id 139so3329361ljf.1
 for <linux-nvme@lists.infradead.org>; Thu, 21 Nov 2019 05:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pELjRh/9lf7cSb2H7LPcD8lsqZa9gpNha5+OJjyl5g4=;
 b=f6kBPygHYzvNsRAMWpmcl1aixibT3WjV8ewyKkXI8IwpKYwTEkC7dJjiU0aBn+FTn4
 nL8mnw5dymhCiWUiYrf+35+y0STQqw/o2iNHFuUkOViXj0GubHd3hKgdVJBO1qBUp4ih
 az/G7w+1b8hnWwnGl6q4Leh0N/mBqMWyFr/iohM0yittXPTEmKdah3K1pbMauEMLDiHf
 e5A/pv4WbL7WTiw5+cPO+yzoAGGsPcEkwOfjdWO1rweS5FBsxr104256O5sLIPnv52y3
 EKBytfcV+oeE3m+xI2QIQBiNO7uYHCnXtusaaSSqedbU7/TmPUw0d0BYstue/EuUJChz
 S1QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pELjRh/9lf7cSb2H7LPcD8lsqZa9gpNha5+OJjyl5g4=;
 b=nFt/EPbf9Y1D6LhoVvyDzXmh5yZzSjQRD6+RYB2s9OYvPsYl39HGhdWS/0Wbu0hScG
 BDpqDK6Itd5xlGJK/2gZTtL5JGQ2IG6U0YWGjaZEXthFt7Sa6C8j8XgDYpvjIr3RbLBv
 skR4Crb0C3pmQorY2ahhFGqvazpOypSrsVKQLlQC6gFPEbNJAKYZCt605JhLz5xHc5bF
 v8HWg0pH3qOrkTu8b3yQngpQ1M1YnNmjz3cRy8fkDUXuhEFVpc5aWWbhDSQU1UCYrq1/
 XDIWepdtv0e2ISJ6Lof/8wqFBtRFChiFB1rCQptkZS7t8EIVhoAbt0PHWyJjHaTQom1g
 lQbA==
X-Gm-Message-State: APjAAAXt0YACOVlC4gtmRWFWShNsaoDrpyDwDAF5jmH+WLmt8m0/zKx1
 /sAZYDsb/wW+eJeojIXG4OWVDzQwvb+UoREYsLY=
X-Google-Smtp-Source: APXvYqyQS8UeZg8nndelWFtmtH4vVyX9P1sGmFVsPIYM5oYDv8i8LnOFsqMLXKiRiLzbSvkvvfKY5EY1uTY2+8y+F+o=
X-Received: by 2002:a2e:864f:: with SMTP id i15mr7383454ljj.29.1574344113019; 
 Thu, 21 Nov 2019 05:48:33 -0800 (PST)
MIME-Version: 1.0
References: <1573746001-20979-1-git-send-email-akinobu.mita@gmail.com>
 <1573746001-20979-2-git-send-email-akinobu.mita@gmail.com>
 <20191120184827.GA12322@lst.de>
In-Reply-To: <20191120184827.GA12322@lst.de>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 21 Nov 2019 22:48:21 +0900
Message-ID: <CAC5umyh8kbQTPh22CX6uEcR1jNEHxa+5HCjGDahnZ_i1k=cEPg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] nvme: hwmon: provide temperature min and max
 values for each sensor
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_054835_168082_4677C141 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-hwmon@vger.kernel.org, Jean Delvare <jdelvare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDEx5pyIMjHml6Uo5pyoKSAzOjQ4IENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRl
PjoKPgo+IE9uIEZyaSwgTm92IDE1LCAyMDE5IGF0IDEyOjQwOjAwQU0gKzA5MDAsIEFraW5vYnUg
TWl0YSB3cm90ZToKPiA+ICsvKiBUaGVzZSBtYWNyb3Mgc2hvdWxkIGJlIG1vdmVkIHRvIGxpbnV4
L3RlbXBlcmF0dXJlLmggKi8KPiA+ICsjZGVmaW5lIE1JTExJQ0VMU0lVU19UT19LRUxWSU4odCkg
RElWX1JPVU5EX0NMT1NFU1QoKHQpICsgMjczMTUwLCAxMDAwKQo+ID4gKyNkZWZpbmUgS0VMVklO
X1RPX01JTExJQ0VMU0lVUyh0KSAoKHQpICogMTAwMEwgLSAyNzMxNTApCj4KPiBEaWRuJ3Qgd2Ug
d2FudCB0byBtb3ZlIHRoaXMgdG8gYSBnZW5lcmljIGhlYWRlcj8KClllcy4gIEkgc3RhcnQgcHJl
cGFyaW5nIGZvciA8bGludXgvdGVtcGVyYXR1cmUuaD4uCk9uY2UgdGhlIGNoYW5nZSBpcyBhY2Nl
cHRlZCwgSSdsbCBtb3ZlIHRoZSBtYWNyb3MgdG8gdGhlIGhlYWRlci4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0
CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK

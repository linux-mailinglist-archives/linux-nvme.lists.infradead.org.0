Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA43A9DD3D
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 07:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZUk0jZ4ruWdA9j9QifccVSqmz5lSu7RgmOVtLNwelY4=; b=qhS2aMBeHWsrI7
	VsH86wqsUAzbDQPwJS7qF+we+OH6g2soxxRfXKkXYrMU7j5VnG8Eyxk8AKGVipMXEnHSbhdsNBERC
	czew7Qj8RRtOoYiGxADFwU+BCGtsAi5dy1/TF984f80Pg7ObyM08DjE9h1fsxT76w5y0tA1I+Mn6s
	9LGtR9I1LIY8KydytHkshSC9W2vL1wofdqngVIwWOd8oKvGOmyBcGtZ2OAcffWWTQ9aFvw0cyyF4M
	66vIYVxA4YSfHBlonOibR0mFGvW29Vx0wmsEOKoVp++yXtxoYVnqnn1EREjmw/1cuRGFLRl6FSAZx
	oQKImBK9xFVQVsxl81Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2UFU-0001yT-BB; Tue, 27 Aug 2019 05:42:32 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2UFG-0001yC-0f
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 05:42:19 +0000
Received: by mail-pf1-x42a.google.com with SMTP id w16so13355149pfn.7
 for <linux-nvme@lists.infradead.org>; Mon, 26 Aug 2019 22:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=ixxmj9M46v4B3o6MycKhBscsaf5YqchH7FfrG+ionPs=;
 b=YxSl8wA7TkFcpfWpPeeN869W7oLeYnNNoLAqwJ0k9RZFD4EpIIeZsJmXb9JBb1HcUo
 pX+fBPpf+TnXl3hfhfd/YUMW7NhjNCgk2Xo0OdWNNInpdBpE8bGBr41JFAK4nMdkMx7P
 AvebtYBi6XZYB6dBGJz1qz+g+VpazfJKWxMu4W5EsNY8z7jEoDMTjoFBBBtq6+vyfaPV
 dEENARS9qa9et/NpFh9sRbBQk/OWtKJBR9saMwOmOCeYJe1Rskcc7Tu6y/9qBmt0ZvcD
 C4dRlJtX9NjcM71p6snAewXfGNXtnlicS81Di7SfacO69SljcTpJ/MeMLFWxUCOmqQM0
 41dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-transfer-encoding;
 bh=ixxmj9M46v4B3o6MycKhBscsaf5YqchH7FfrG+ionPs=;
 b=QAd+lYPSu6zo44f8kdXtLKozBpb6NwM38WW/R9I0M2u+niJwYN+SsHRe9fO7wwqoy3
 hWblPLoBvD3eXTMwVTlG8lDSHmaQdkKTkPuEWV60fHht1mJSMZQJu/40Nkm4OZgXVjXs
 Xda4vyX8ci4GIdCMxqjhEDmB4aFmX6mk0P43XspFolsrzuTJelm8Lrs7o3IBVODjf8sC
 O0bcw9wryxtIXQCwQHxPhreuWaM6y4Mr4zN9xNvtPay4O1w0Wu+BSGew4/maRSbF7NVa
 iWjP9XKD2HPne4rsfs78gI4AWxVX6ImV1/BaJEJbe1AxVmxBfZ6+LyDq6AgKQHtd5Kln
 QBCA==
X-Gm-Message-State: APjAAAUFdO7oY5o1aiN0sG6uQg5R6KztMsjmmY2h2t6LqELALWQhp7P1
 ug40Bse4p9b7+WjBSKEZ8caHrqfB
X-Google-Smtp-Source: APXvYqwyRuWoH0AelVZGUUJ6+Oj6Ht9rOnuPkpBNQBlMYyadRYvAQmKZLofdiLTw86fy+XIoX9f1Kg==
X-Received: by 2002:a62:1b0c:: with SMTP id b12mr23934407pfb.17.1566884536901; 
 Mon, 26 Aug 2019 22:42:16 -0700 (PDT)
Received: from comet (c-67-188-238-81.hsd1.ca.comcast.net. [67.188.238.81])
 by smtp.gmail.com with ESMTPSA id o35sm11709417pgm.29.2019.08.26.22.42.15
 for <linux-nvme@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 26 Aug 2019 22:42:16 -0700 (PDT)
Date: Mon, 26 Aug 2019 22:40:25 -0700
From: Alex Nlnnfn <alex.nlnnfn@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: interrupt coalescing and error reporting
Message-ID: <20190826224025.2484da8e@comet>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_224218_085935_37BE4F6F 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42a listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alex.nlnnfn[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGkgTGlzdCwKCkFjY29yZGluZyB0byB0aGUgTlZNZSBzcGVjIHJlY29tbWVuZGF0aW9uIGNvbW1h
bmQgY29tcGxldGVkIHdpdGggZXJyb3JzCnNob3VsZCBvdmVycmlkZSB0aGUgaW50ZXJydXB0IGNv
YWxlc2NpbmcgYW5kIHJlcG9ydCB0aGUgZXJyb3IKaW1tZWRpYXRlbHkuIApTZWUgc2VjdGlvbiA1
LjIxLjEuOCBJbnRlcnJ1cHQgQ29hbGVzY2luZyDigJxJdCBpcyByZWNvbW1lbmRlZCB0aGF0Cmlu
dGVycnVwdHMgZm9yIGNvbW1hbmRzIHRoYXQgY29tcGxldGUgaW4gZXJyb3IgYXJlIG5vdCBjb2Fs
ZXNjZWQu4oCdCgpIb3dldmVyLCBOVk1lIFNTRHMgZnJvbSBJbnRlbCBhbmQgSEdTVCBkZWxheXMg
ZXJyb3IKcmVwb3J0aW5nIGFjY29yZGluZyB0byB0aGUgaW50ZXJydXB0IGNvYWxlc2NpbmcsIGlm
IGNvbmZpZ3VyZWQuCkJlbG93IGlzIHRoZSByZXN1bHRzIGZvciBJTlRFTCBEQyBQMzcwMCwgc2Ft
ZSBmb3IgSEdTVCBVbHRyYXN0YXIKU04yMDAgYW5kIEludGVsIE9wdGFuZSA5MDBQLgoKTm8gY29h
bGVzY2luZywgcmVxdWVzdCB0byByZWFkIG5vbi1leGlzdGluZyBibG9jayBjb21wbGV0ZXMgaW4g
MjMgdXNlYzoKJD4gbnZtZSByZWFkIC9kZXYvbnZtZTBuMXAxIC0tc3RhcnQtYmxvY2s9MHhmZmZm
ZmZmZiAteiAweGZmZiAtdAogbGF0ZW5jeTogcmVhZDogMjMgdXMKcmVhZDpMQkFfUkFOR0UoMDA4
MCkKCk5vdyB3aXRoIGNvYWxlc2NpbmcgMHgwMGZmZmYgIChUSU1FIDI1IG1zZWMsIFRIUiAyNTYp
IHNhbWUgcmVxdWVzdHMKY29tcGxldGVkIGluIDI1IG1zZWMuCiQ+IG52bWUgcmVhZCAvZGV2L252
bWUwbjFwMSAtLXN0YXJ0LWJsb2NrPTB4ZmZmZmZmZmYgLXogMHhmZmYgLXQKIGxhdGVuY3k6IHJl
YWQ6IDI1NTIzIHVzCnJlYWQ6TEJBX1JBTkdFKDAwODApCgpFcnJvciByZXBvcnRlZCBhY2NvcmRp
bmcgdG8gdGhlIGludGVycnVwdCBjb2FsZXNjaW5nICgyNSBtc2VjKS4KCkkga25vdyB0aGF0IHRo
aXMgaXMgbm90IG1hbmRhdG9yeSwgb25seSBhbiByZWNvbW1lbmRhdGlvbiBidXQgSSB3b25kZXIK
aWYgdGhlcmUgaXMgYW55IHJlYXNvbmluZyB3aHkgdGhlc2UgTlZNZSBhcmVuJ3QgaW1wbGVtZW50
ZWQgYWNjb3JkaW5nIHRvCnRoZSBzcGVjIHJlY29tbWVuZGF0aW9ucy4gCgpBbHNvLCBpcyB0aGVy
ZSBhbnkga25vd24gd2F5IHRvIHRlbGwgdGhlIGRldmljZSB0byBvdmVycmlkZSBjb2FsZXNjaW5n
PwpJIG1lYW4sIGZyb20gdGhlIGRyaXZlciBzaWRlLgoKVGhhbmsgeW91CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlz
dApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==

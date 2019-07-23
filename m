Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C9771DC2
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 19:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2a+0ZL6XbYDvVKTooCeym8RjJ1eV7l/IdGBKdQgo0u4=; b=qTCQA9rg+8QXN6u3c4IYt04h0
	ZaGtW8okNUymJkGRo2cANQ2yeNh8TfagHIpbovuWCDSxQWgTYJ97qa46MM9imjXzNLWGv6xKYNMin
	nty6eKezLEvxFWsW6ZSHJgXnxo8ev42SpM6tvo+sWHmu2Rkw92OO2lKJfc0B7bKvq0fKHGe7vvCVt
	8LyRxtw3ggyIg58HIZWO6qGdy7YNe+RstFr8OiGmhjx/fvVSDLxeUaVFh4O+xdKo/q3YYlcwvLpQa
	B/aRyyM8+IIQkB2NejV6cymVcqZKboJf3jkvAu0G4Pp9srk/0Wm3SpdqkmCC8xvJ2f0g2Qkm4n0r2
	M50dIREcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpyeZ-0002Xz-4M; Tue, 23 Jul 2019 17:32:43 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpyeO-0002XX-Ot
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 17:32:33 +0000
Received: by mail-ot1-f65.google.com with SMTP id l15so44863423otn.9
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 10:32:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+01Xc7g1DI5W2AyIAKyJqk0X+wPL/7SBKS/mN06enuI=;
 b=gk5GQ9BuiXX7joeOr08Pix6bpYLOH4QJ79vkvj9KtqhOMvNjBRxXOtuK2VzyxUhLsz
 VlyhQLOfT+GL8ZZKCTULcXoQhQHiGo2hElPbDnuq3UMPoLQZ9qoc66Q3N7W10EGN2AH5
 TVBowoJTgRN4gUrp0GjNZubsOmvtAH54uR1fsaHBCXSTLU1Javt8xG2+0l7bcE0GKC2D
 YOKkCDkTOph2Ku5T1FJC3vg8wQQrAbIlEBGXX/OkYthitFymyh1LcXDXCrlfJ2PFSOw3
 vwKhfJjU4ycH28DcZzZEJgwrjOKaM7BijhKyKKbPsy/aTIeh981fR0MeNwZD3nDErjrw
 ynKg==
X-Gm-Message-State: APjAAAWUgqrzKgCKWOMm/rJx9bJQfBRPKiWlbPb8Gfj7OT0njxjSAfXx
 5AEcO60qgPsMZLQ+umEH4ST/hZYN
X-Google-Smtp-Source: APXvYqxDP6E53hmPGIhKCNwGteKIw5bNFFKBz8nPI61NvAc+eBko99+ZKHEjARhpLjWl8NoBsHmBEA==
X-Received: by 2002:a9d:3e3:: with SMTP id f90mr33439479otf.202.1563903152104; 
 Tue, 23 Jul 2019 10:32:32 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id w3sm15992173otb.55.2019.07.23.10.32.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 10:32:31 -0700 (PDT)
Subject: Re: [PATCH v2 10/10] nvme-cli: nvmf auto-connect scripts
To: James Smart <james.smart@broadcom.com>, James Smart
 <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190719225305.11397-1-jsmart2021@gmail.com>
 <20190719225305.11397-11-jsmart2021@gmail.com>
 <4efefb70-7ab1-69af-4f41-63223e9f4ff8@grimberg.me>
 <d5b4ef61-cf1d-ce9c-1bd0-7f372f874320@broadcom.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2297e9f3-4a9d-e759-5633-aeefe736b09c@grimberg.me>
Date: Tue, 23 Jul 2019 10:32:29 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <d5b4ef61-cf1d-ce9c-1bd0-7f372f874320@broadcom.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_103232_813065_EE720AFF 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4+PiArIyBFdmVudHMgZnJvbSBwZXJzaXN0ZW50IGRpc2NvdmVyeSBjb250cm9sbGVycyBvciBu
dm1lLWZjIHRyYW5zcG9ydCAKPj4+IGV2ZW50cwo+Pj4gK0FDVElPTj09ImNoYW5nZSIsIFNVQlNZ
U1RFTT09Im52bWUiLCBFTlZ7TlZNRV9FVkVOVH09PSJkaXNjb3ZlcnkiLFwKPj4+ICvCoCBFTlZ7
TlZNRV9DVFJMX05BTUV9PT0iKiIsIEVOVntOVk1FX1RSVFlQRX09PSIqIiwgCj4+PiBFTlZ7TlZN
RV9UUkFERFJ9PT0iKiIsIFwKPj4+ICvCoCBFTlZ7TlZNRV9UUlNWQ0lEfT09IioiLCBFTlZ7TlZN
RV9IT1NUX1RSQUREUn09PSIqIiwgXAo+Pj4gK8KgIFJVTis9Ii91c3IvYmluL3N5c3RlbWN0bCAt
LW5vLWJsb2NrIHN0YXJ0IAo+Pj4gbnZtZi1jb25uZWN0QC0tZGV2aWNlPSRlbnZ7TlZNRV9DVFJM
X05BTUV9XHQtLXRyYW5zcG9ydD0kZW52e05WTUVfVFJUWVBFfVx0LS10cmFkZHI9JGVudntOVk1F
X1RSQUREUn1cdC0tdHJzdmNpZD0kZW52e05WTUVfVFJTVkNJRH1cdC0taG9zdC10cmFkZHI9JGVu
dntOVk1FX0hPU1RfVFJBRERSfS5zZXJ2aWNlIiAKPj4+Cj4+Cj4+IEphbWVzLCBzaG91bGRuJ3Qg
dGhpcyBiZSAvYmluL3N5c3RlbWN0bD8KPiAKPiBJIGRvbid0IGJlbGlldmUgc28uwqDCoCBPbiB0
aGUgZGlzdHJvcyBJIGNoZWNrZWQsIC9iaW4vc3lzdGVtY3RsIGlzIGEgc29mdCAKPiBvciBoYXJk
IGxpbmsgdG8gL3Vzci9iaW4vc3lzdGVtY3RsCgpOb3QgYWx3YXlzIHRoZSBjYXNlLiBMZXRzIGNo
YW5nZSB0aGF0IHRvIC9iaW4vc3lzdGVtY3RsLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbnZtZQo=

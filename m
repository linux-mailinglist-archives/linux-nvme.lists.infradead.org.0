Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6A11A4331
	for <lists+linux-nvme@lfdr.de>; Fri, 10 Apr 2020 09:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=Oxxgh5gEd9NbKN7RDHUJuDBmH
	ruKge3jcDnZe0EU04fp/ur5qYwzfUc5AlPWY0DFMs4ey4ZYBdwcg3AS1QYBVd7EINUWAhooQDWeIM
	Mh5XFOQE/YVc2uSdDZ2nAtJGypjiGyTV0o0QajIPXmYdDL9qa783u+0eWB/WBIxNO/xKf5Mx/xEdv
	2vGag1oXIsqmezh8is0Y/nCy91rxh6W48rquYpe+grpFaIDHNYSbn1IDff2cKx4GK/tx5Xcpph5jx
	r9HcugBaPDtyNPDQ/dXcm/wFblDKe8YMArq+lOj7nqw+TaykZC+S6rsImhLpYclYBRdL51vRnMjrU
	v8cziC3jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMoRB-0000jB-6u; Fri, 10 Apr 2020 07:50:53 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMoR6-0000ik-2J
 for linux-nvme@lists.infradead.org; Fri, 10 Apr 2020 07:50:49 +0000
Received: by mail-wr1-f66.google.com with SMTP id s8so1379659wrt.7
 for <linux-nvme@lists.infradead.org>; Fri, 10 Apr 2020 00:50:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=htbvBnsiHVtNcwUXBkuMxP+gx3flx2Le4l0DvmsVf+20G2OilyNPzEztk6NciYgoB2
 p7j7+IWuhAIvqyaW2bkZBApB8yDv0bKtSIAGjUDXvHmEMkTTeSmEOx+yHdX8IDZc4PjI
 FwojdVDixmvEA5gL586VQypOQM4XDz6efAO5v+nxV1y3KsRuUzGksnnkaQj7TtNTaYpr
 pnhDhz03NpNuIBK2Lp7r3y/EP03QAtv3ujqDHw4Yv/GjOLmxX1frB/p2M+4m88JTnqrf
 2FI0SH2xbpuQwAe1LCaAo6Pd6ua/DhqNaJI7mpmByTO+lx/UJ2DQa9JeJ2LXsZRNMu1x
 P5Lg==
X-Gm-Message-State: AGi0PuYgwBFbGqdDc5Gw7InFSNUDvPxyV+zwvaqNr14Julg8e6usfLmr
 Zox5YlIFE06+Jk8jV+9ev9fZ7Ugm
X-Google-Smtp-Source: APiQypJgse5lUI/ZX+pk2KYY1JWg/arUgZ14v73unTw4U5UCCI+7p+f6Zy72oCti50xw1euKGtD5pA==
X-Received: by 2002:adf:ee83:: with SMTP id b3mr3130667wro.425.1586505046618; 
 Fri, 10 Apr 2020 00:50:46 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:9052:1641:fbba:d9ee?
 ([2601:647:4802:9070:9052:1641:fbba:d9ee])
 by smtp.gmail.com with ESMTPSA id a10sm1817294wrm.87.2020.04.10.00.50.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 10 Apr 2020 00:50:46 -0700 (PDT)
Subject: Re: [PATCH 09/10] nvme: revalidate namespace stream parameters
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, hch@lst.de
References: <20200409160908.1889471-1-kbusch@kernel.org>
 <20200409160908.1889471-10-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <43f977b8-1095-12a4-0f18-7b2a6b5e6409@grimberg.me>
Date: Fri, 10 Apr 2020 00:50:43 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200409160908.1889471-10-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_005048_105667_8F6616CC 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

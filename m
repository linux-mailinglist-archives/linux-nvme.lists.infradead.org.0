Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C0B16F009
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Feb 2020 21:27:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=nbz8anPygR02vu/WHYU6zHFTe
	NU2Fyc6ttCQhigEOevuv5LdsrqwyzWlZy+X0xCXWip0hDeYed3WIi5UYJWRYnE59g3EDQSlN1uCBk
	jiaGggxVys+IzFFArUUdtos2KLEchyFleG7myt5fZ9MM9RfpvwWuYkSNDtGf+WcP+qim1Ot8e5vVt
	CPN1iBpjv/T3aFbiERPjVamoWjjUok5nZ9octbjYKi5uO71oaZFlMA6oHa1IRz/rzgcUb0HMrgv0r
	FGC6gmoUx/2apv5qYaysHyS5bswxm2jXiTMlW5MosVqamvNLLY0c7155km18JahH6UcFzmOBCQToF
	ENiiW2JYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6gnd-0003cB-0m; Tue, 25 Feb 2020 20:27:25 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6gnY-0003b5-3K
 for linux-nvme@lists.infradead.org; Tue, 25 Feb 2020 20:27:21 +0000
Received: by mail-oi1-f195.google.com with SMTP id q84so657504oic.4
 for <linux-nvme@lists.infradead.org>; Tue, 25 Feb 2020 12:27:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=S3uVfex3VVaWVRB6MMowVS054fAbuhVIGD8lM2GmPHbIGVQMjXDxB1DlsYYX1/ABMn
 hcuYvfW9xOJjiuu9Cs3A2ZpxHxpeubRowOma+0tP+JMKQSD4jRXxBBY9QIsO1QWWzT+c
 trgKTkwQwFziZQR1m5SHBxVggLM/kKLZATa97RKqRQtqahhJISvctGXLLdZfl1kTVi1u
 aphK0p2LqfyEY2HwR1WGSj2daJpF+atk19AcACywMkHZSe+E/ED42btMQsgTxWh1Cn0y
 bvuUeLo+N3irDaBQAOoq8rVp7+wn4Xr2zXAklHDZ1Y+Ffm0cxFFQF4FzMI4yDcvYRtg7
 mYtQ==
X-Gm-Message-State: APjAAAWOwGTr9P56IWVz/q5RB5f4ZiQrjph42VbiXL4+IRFuRXV7i/Pb
 n7JOryyFPHDGEbRcMPaZcfE=
X-Google-Smtp-Source: APXvYqyROWUo5SzD7NtdqshCozJhgly/q+D3L3kxZ/rHRQxy9ulUXAagqEYFzIxQCPlP1WYvCdSSSg==
X-Received: by 2002:a05:6808:a83:: with SMTP id q3mr619804oij.0.1582662439094; 
 Tue, 25 Feb 2020 12:27:19 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id k18sm5565777oiw.44.2020.02.25.12.27.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Feb 2020 12:27:18 -0800 (PST)
Subject: Re: [PATCH v1] nvme-pci: Move enumeration by class to be last in the
 table
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
References: <20200224093823.17534-1-andriy.shevchenko@linux.intel.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <afc7c5dc-f5ef-2944-e427-48d9f4ade86f@grimberg.me>
Date: Tue, 25 Feb 2020 12:27:17 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200224093823.17534-1-andriy.shevchenko@linux.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_122720_140503_01A071E8 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

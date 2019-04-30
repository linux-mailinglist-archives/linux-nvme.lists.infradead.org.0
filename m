Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE14FE3C
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 18:57:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AojnTrIE3N6E3VajC1+iaga7Y8rSuQMybgh+2hW5zKk=; b=cDVhOdHM54AmIw
	hsAreCjn5Kpt4e92WLC78JcMzcvWNf3HMLUOsYxykTqLarH6B+PmZtp3q2QliAC0qSaknsEr/zQKm
	z5k18WYMBDuCsojZ7r+vaxQ4S2qPtq2GeDzdn01CDfb0sJ1UIlHCkSnbmHi/0PqNYsYkQBihpPpPV
	uTXKgQbBshGhxsfEDyt6sjMbIOSWF9cUm50mOif7BI9HI1Acs+7j0S5JbNOqYtWggEsTO5d8SLX3F
	9Fg05/2PooNq7Cx3ayB82DAaRaQk/etqJbbTgZXh3N7F/LON81djVwdc57x9woOGGda9rwBN2PZ5J
	bPSGwsN+AvZlOJp8Bryg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLW4Z-0000Ni-TP; Tue, 30 Apr 2019 16:57:39 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLW4U-0000N8-Sa
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 16:57:35 +0000
Received: by mail-pf1-f196.google.com with SMTP id u17so3393001pfn.7
 for <linux-nvme@lists.infradead.org>; Tue, 30 Apr 2019 09:57:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LSK5tNBxfHmKZYvsS1oRP9xzlLMS8ncyOqIl4lqaZlE=;
 b=GZygOxYi6osyGTGdvHe+8JrwgTyvohiT1nlX0RJsQ2RhjDwnqseFRAZog+yDD2PszW
 OGccgYGlcAQAd3WquazP8TPiFLts5OxTVlt6T2/V2RLQsdi83WyGOsLG7U+Cnj4cw9n+
 3k1jJnllbngKlPlx2o51O8GbanJHx5vMZC9Cc/0qgm/QXaiUW60PbjeXVUAHcvdUHWP0
 RPOx5+NyejonNSHJU7/oay+WiCSN9Nwb9kPQfcP7uOnadXniXiu0wUKf6TcTE9Zbee10
 HFaNAIEUmRcSih9h0S/JyaHD8kPWd2KpLOIM3GPqckxRt+hnL7OhxR6xo1ADbSfDxwMU
 wEFw==
X-Gm-Message-State: APjAAAUXYpwfQS+5NA7AoBzZfNY9yMtyGMKbz1Rh4AEo18YFgslIp8IJ
 jFgx9W2fhOv1iTzfwnAuZRs=
X-Google-Smtp-Source: APXvYqzDgeWKlVgQ3uFKIgicU9mh13GWZUho59oVX83WhpdTnD4/dyXTru71vqaACebsah270C1/8A==
X-Received: by 2002:a63:8dc8:: with SMTP id z191mr32060108pgd.9.1556643453760; 
 Tue, 30 Apr 2019 09:57:33 -0700 (PDT)
Received: from ?IPv6:2620:15c:2cd:203:5cdc:422c:7b28:ebb5?
 ([2620:15c:2cd:203:5cdc:422c:7b28:ebb5])
 by smtp.gmail.com with ESMTPSA id v1sm66201967pff.81.2019.04.30.09.57.32
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Apr 2019 09:57:32 -0700 (PDT)
Message-ID: <1556643451.161891.171.camel@acm.org>
Subject: Re: [PATCH 2/2] nvme: mark nvme_core_init and nvme_core_exit static
From: Bart Van Assche <bvanassche@acm.org>
To: Christoph Hellwig <hch@lst.de>, keith.busch@intel.com, sagi@grimberg.me
Date: Tue, 30 Apr 2019 09:57:31 -0700
In-Reply-To: <20190430153833.9011-2-hch@lst.de>
References: <20190430153833.9011-1-hch@lst.de>
 <20190430153833.9011-2-hch@lst.de>
X-Mailer: Evolution 3.26.2-1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_095734_917801_A6046F5A 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 2019-04-30 at 11:38 -0400, Christoph Hellwig wrote:
> [ ... ]

Reviewed-by: Bart Van Assche <bvanassche@acm.org>



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

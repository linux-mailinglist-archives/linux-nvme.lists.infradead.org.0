Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD2A17B00B
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Mar 2020 21:53:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z1fMvao11i+d0UZrbIxXcd2/3fEWA/mH8uzwOCutGXo=; b=JuvvU2QglE5TVsGSXbeLaxlFU
	3RaLfv5t7orE1ETFOnqC+TymgF6yt2xOEBGEt+3gc2VSIVP7t97muUrY2B8J0B0iriuwH5f2GJsML
	xlRCqSu/0ObJOaG+/FrWWaMpzA+IJJ+bV6YFeYa95QGB41abYrS75zhTRyPRQP4UgP7GnHnPFVx7l
	DsgtP68kgvIbeqCMNRsmxx90l42XR8RyGnVh59gmlioiOKIZiU73dKTUHhprc54Ce+XTDoab753ha
	tLTPZQRKRKUgbpZ2lnw6wfE8EoRw1fAbv2VdnluSOBmg7fmdznS1GMFFlyL+TjvQWFvCIO35gnyze
	IzcXYkhvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9xUz-0007jR-Kk; Thu, 05 Mar 2020 20:53:41 +0000
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9xUv-0007j5-Jd
 for linux-nvme@lists.infradead.org; Thu, 05 Mar 2020 20:53:38 +0000
Received: by mail-oi1-f180.google.com with SMTP id d62so233356oia.11
 for <linux-nvme@lists.infradead.org>; Thu, 05 Mar 2020 12:53:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=EIU2IFz9LVCwWYkh0Usk7+lhL4ddHXt8amo6D4q+CfijKR6neL4FRgwKWzMDlROdHs
 q83F11A+SsZak6nFMQUkXylIgMQ6Eo/GouhSwIVYEDmrmHJ2xpORVfk3+FcYXiiCDTUa
 HqAY40R/RnVD+0B64kZ9HMhRUZlkdvb5H9j1H5b2ciIWcjNyOfew5sLW9K4dvbC9j9b9
 pAVQ/8o+s9pr3yKSwRoH/DfSfP5w0Ml8rPGEw8jrw31bUKNSImtZBuwDAmYn+e1kwstH
 UrSiKSAY/OvYmuMuvXhFW1VHlj0Q0aLAMQhfllwNDiiYyKnBWxKbrs0otbB+Uf3Pp+gg
 LIpw==
X-Gm-Message-State: ANhLgQ3Mi7nmFs5yu21m/WwyUcM4EiSX6wDRseMiCQQ+KqPNkgg/89rm
 vJuybbpNFgmd55xnthZco8E=
X-Google-Smtp-Source: ADFU+vs8ZkLkvnuIeFPkOMO0dlZ8B/h1mhAgrnBalPvLYM/SRy12PcDF4KKWFhJKJ7eVe7uw3z8yBg==
X-Received: by 2002:a05:6808:3ae:: with SMTP id
 n14mr228938oie.63.1583441616363; 
 Thu, 05 Mar 2020 12:53:36 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id f84sm2841310oib.32.2020.03.05.12.53.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Mar 2020 12:53:35 -0800 (PST)
Subject: Re: [PATCHv2 2/3] nvme-pci: Remove two-pass completions
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, hch@lst.de
References: <20200304181246.481835-1-kbusch@kernel.org>
 <20200304181246.481835-3-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <b3a74643-0373-fc10-168e-c49ab5414585@grimberg.me>
Date: Thu, 5 Mar 2020 12:53:34 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200304181246.481835-3-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_125337_644450_4E4D727D 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.180 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
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
Cc: bijan.mottahedeh@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

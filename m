Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5CCB6A6D
	for <lists+linux-nvme@lfdr.de>; Wed, 18 Sep 2019 20:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AlB7n9EquNt5PFXBZxn0EykEWvo0ZDiNTcmscMe3AMI=; b=t2OHQAffCL+CwO3ycpbo3Fxw7G
	i2ouIYP8m4EN15slNNXTR7T0JAVDRSPMsNNYLwNXEDkFLlFUueKKy7/KjZPhLZGQWzdiMo3veNPiL
	yBaeV5EjW4s1FkCqgO2El1hjR4E0bUQ64SpfEuRVQZKW7dhPxzetf1Had5oCFz1w7EHVQPlfKHpab
	KNNMDTEj9jHYRfVOsc3371vIU7O7IXkZ7B2jrGXVDZPHhWdHJb9OqZrTcw1rfQZbmpesePf5Fruk0
	rERrW7t27lEDr4CNoEfuudLCFUSfC5fJcwGzmni1AzVY04eRMyRP4fSedfYFfpqTlf3Z192yeDgIw
	CQk+X9Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAead-0002vd-JM; Wed, 18 Sep 2019 18:22:07 +0000
Received: from mail-pf1-f169.google.com ([209.85.210.169])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAeaV-0002ux-3a
 for linux-nvme@lists.infradead.org; Wed, 18 Sep 2019 18:22:00 +0000
Received: by mail-pf1-f169.google.com with SMTP id y5so537845pfo.4
 for <linux-nvme@lists.infradead.org>; Wed, 18 Sep 2019 11:21:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tywo6qkwM1eZtP4+JRFX1NUkqZvEclUHKaVKp+d17Ac=;
 b=CMUTN/Zm+/iNQl44qd6I6l67LVtsMd1rX70XPk9b5xWrKhGrRXSlYg/QzO0hdVnGzR
 idumuQhWsEgg30Zr6ucOscXnQTv4GJgchykeXpI8y0engSBsW2kpxWPaONsYei0bYqK9
 Aml6iK2MKMKpUgkeUfugU7foX8aPIIR4Jaf1yBQddzVMt68Z7LRYpmBt8W5jhZUHQgcY
 iVSaHYX2okJR93ki8chPrQS9+9HItUqL4dPudnvj036FT+ax77HDVwgW/gPmXBNP6E8t
 d2KDQsRRNm9c4Lzzh+IWsStR38mbYTXhjd5TAjCiYX04ZS9H5Ul537aFpeBtAvs0y54D
 egrA==
X-Gm-Message-State: APjAAAVWGuUSZ0nWQphY0t6ajG/H3MkG90//D5/NqKthdRNs9PngzWyy
 uMjVjxEJzdBvnJHq2r7q0GxPG66C
X-Google-Smtp-Source: APXvYqxV7sCYn08TZqxMB4fp8Q46Ca3dbBbIzrbPlbqg5u6BM52Fl2DFoIu+tPrjHyfp9dCQwqIARQ==
X-Received: by 2002:a17:90a:3546:: with SMTP id
 q64mr5098664pjb.13.1568830916364; 
 Wed, 18 Sep 2019 11:21:56 -0700 (PDT)
Received: from ?IPv6:2620:15c:2c1:200:fb9c:664d:d2ad:c9b5?
 ([2620:15c:2c1:200:fb9c:664d:d2ad:c9b5])
 by smtp.gmail.com with ESMTPSA id u17sm6491438pgf.8.2019.09.18.11.21.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Sep 2019 11:21:55 -0700 (PDT)
Subject: Re: [PATCH] nvme/host/tcp.c: fix use of time_after()
To: "Wunderlich, Mark" <mark.wunderlich@intel.com>,
 Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <B33B37937B7F3D4CB878107E305D4916D339CC@ORSMSX104.amr.corp.intel.com>
 <8881fa6b-0825-4f4d-4713-eee3062f1cea@grimberg.me>
 <B33B37937B7F3D4CB878107E305D4916D35B84@ORSMSX104.amr.corp.intel.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <f7dc2e5c-b392-5a65-9d6f-b6576e9a7dcf@acm.org>
Date: Wed, 18 Sep 2019 11:21:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <B33B37937B7F3D4CB878107E305D4916D35B84@ORSMSX104.amr.corp.intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_112159_148642_E0512F9D 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.169 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.169 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 9/18/19 11:20 AM, Wunderlich, Mark wrote:
> Personally do not like use of label 'start' to indicate the end of time period, to me would read better if used something like 'quota_end' or 'time_end'.  But not worth changing here?

How about 'deadline'?

Thanks,

Bart.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

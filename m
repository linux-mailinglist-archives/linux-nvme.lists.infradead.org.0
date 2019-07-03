Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C955EA88
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jul 2019 19:33:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kWCBWKN3rpScOTmYJCyjoFe2kiR0qm8aZr7+E+3oKLM=; b=rlI37xPlWHKgldlG5IuIC5pSe
	6iB83rzkBRer1IVNcPIpefHmX2uIZ7rVJvd7D9nVyRmDHqniT/dhg1IWhmD8MwInjzbmRFDTusDgw
	7enXHTmgjzrw+eJtiES2nZFE1ZFJ5DT/BqKNpYubVQIEXI8wjK+vNJj1FAeJLJC+UNCdRJrNgCZBD
	Ksx9rewVIKPHT+fi4qSL2hfUhY4MzNS+SkI04jJrEXXxurD8I7JFXRE3BdI5wkBu3nowUIxD08XmO
	E5z2F0gGoFVq/Wg2Z4uHiZ+Hsog16zGfr6ET++H2I6Qwj+sETP4I2N4zOljmh6P06B0xmRnuLs4gi
	HJMdl+IEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hij8e-0003Y3-Qk; Wed, 03 Jul 2019 17:33:48 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hij8U-0003X5-Es
 for linux-nvme@lists.infradead.org; Wed, 03 Jul 2019 17:33:39 +0000
Received: by mail-ot1-f65.google.com with SMTP id q10so3190139otk.10
 for <linux-nvme@lists.infradead.org>; Wed, 03 Jul 2019 10:33:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=sN8SjiSoTlwKd+MHKIy7hmdapLfkm12Ci8ci1qQb/50=;
 b=GkWakzRyiXP67bWlwUJ8UcvXCeEvDYP8VEvgzaoqu744ecHRhIet5RCvyHmkreNb8e
 ERl6Eqp/bSZ1IWK4tHWSMb8APfgRZ6lrcB99NB3hSEgpWiWVtnBop1x+JL3mRQO6BJAs
 uKd6iV4pSnIxH2ktefm/wmak0Xv7ktYJ8gOHMdC9MEBgYwhTolaw+GAlpJ1CIPVi85pQ
 WXh5WPY4FapcFTL6sTmafaoPRoHvX8gdPSu5ZE2LS4Ds4abjf3YYrr3d28jsLdaovm8s
 LGs84p8tpsBbO+0ddw52TsD9bcqDhl7aqIlI2kdI0WohkRrpRfvsBd//D3kX2fmolY8d
 /YLw==
X-Gm-Message-State: APjAAAUIARHTcNc6txJmnP944oRO0YKSwtIniYY+jk4RCR8l/P+RXBj1
 41j6vdMuEFAC4f8h0PVyiWI=
X-Google-Smtp-Source: APXvYqxaAv4XfhTXyzOQEO5Mh5YfM0MiSUILT0WL4cl68IyGEe7Admy91MEMDtoIkz91MLOpjRO6+g==
X-Received: by 2002:a9d:7248:: with SMTP id a8mr31564520otk.363.1562175216928; 
 Wed, 03 Jul 2019 10:33:36 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id 132sm924488oid.47.2019.07.03.10.33.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 10:33:36 -0700 (PDT)
Subject: Re: [PATCH 0/2] Fix use-after-free bug when ports are removed
To: Logan Gunthorpe <logang@deltatee.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
References: <20190703170136.21515-1-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e88bed6b-c487-e224-1434-ba9912495a33@grimberg.me>
Date: Wed, 3 Jul 2019 10:33:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190703170136.21515-1-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_103338_503827_26373EC5 
X-CRM114-Status: GOOD (  20.88  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Stephen Bates <sbates@raithlin.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> Hey,

Hey Logan,

> NVME target ports can be removed while there are still active
> controllers. Largely this is fine, except some admin commands
> can access the req->port (for example, id-ctrl uses the port's
> inline date size as part of it's response). This was found
> while testing with KASAN.
> 
> Two patches follow which disconnect active controllers when the
> ports are removed for loop and rdma. I'm not sure if fc has the
> same issue and have no way to test this.
> 
> Alternatively, we could add reference counting to the struct port,
> but I think this is a more involved change and could be done later
> after we fix the bug quickly.

I don't think that when removing a port the expectation is that
all associated controllers remain intact (although they can, which
was why we did not remove them), so I think its fine to change that
if it causes issues.

Can we handle this in the core instead (also so we'd be consistent
across transports)?

How about this untested patch instead?
--
diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 0587707b1a25..12b58e568810 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -277,6 +277,21 @@ void nvmet_unregister_transport(const struct 
nvmet_fabrics_ops *ops)
  }
  EXPORT_SYMBOL_GPL(nvmet_unregister_transport);

+void nvmet_port_del_ctrls(struct nvmet_port *port)
+{
+       struct nvmet_subsys_link *l;
+       struct nvmet_ctrl *ctrl;
+
+       list_for_each_entry(l, &port->subsystems, entry) {
+               mutex_lock(&l->subsys->lock);
+               list_for_each_entry(ctrl, &l->subsys->ctrls, subsys_entry) {
+                       if (ctrl->port == port)
+                               ctrl->ops->delete_ctrl(ctrl);
+               }
+               mutex_unlock(&l->subsys->lock);
+       }
+}
+
  int nvmet_enable_port(struct nvmet_port *port)
  {
         const struct nvmet_fabrics_ops *ops;
@@ -321,6 +336,8 @@ void nvmet_disable_port(struct nvmet_port *port)

         lockdep_assert_held(&nvmet_config_sem);

+       nvmet_port_del_ctrls(port);
+
         port->enabled = false;
         port->tr_ops = NULL;
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

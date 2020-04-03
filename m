Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7901919D094
	for <lists+linux-nvme@lfdr.de>; Fri,  3 Apr 2020 08:55:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7K1yjRoBBaI1O4i89YGKa8Xy6zIx7NWwbQh3WElv9Y=; b=jYICAoPXfp/anY
	CdZj8rr2ksYGuWsW/CR8qYx6ZZQca/4AFhN725u3wKuU0L4aDqD2fcG0WWIBsgEamdIiTz4T5weDK
	Trw38dS/nh36ftBfwOx9KzLU1j9e3+R/wR6LVH1zNa1/s94snXEfKdwNhfdMOUdQmGHlLZ6yxkFXr
	0SGMeg2FiRkRRZcJzLEc0ejtvdaAK7ozTKEDlTV7ARKneS2RCdOXABnQCy6qvbpVxGaordjKXHHdM
	U5+n926TjPgnBLGcjzm7RYYYAWgQf8wp6qhHhwnSWZe7wH6fPIHTX9y/EPXYR9jv5oY/807wnPgid
	3Vz+gXLTnVg0U0Q0pk5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKGF1-0002pe-Ld; Fri, 03 Apr 2020 06:55:47 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jKGEz-0002pV-4R; Fri, 03 Apr 2020 06:55:45 +0000
Date: Thu, 2 Apr 2020 23:55:45 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Tony Asleson <tasleson@redhat.com>
Subject: Re: [PATCH] nvmetcli: Correct xrange usage for py3
Message-ID: <20200403065545.GA10794@infradead.org>
References: <20200401191316.54355-1-tasleson@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200401191316.54355-1-tasleson@redhat.com>
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks, applied.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
